using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string DB_Input = "";        

        if (IsPostBack) return;

        ListBox_Products.Items.Clear();
        //ListBox_Products.Items.Add("Select a user");

        DB_Input = "Select Product_Name_PK from Products";

        DB DBCon = new DB();

        DBCon.DBMethod(DB_Input);

        DBCon.SQLCon.Open();

        SqlDataReader Reader = DBCon.SQLcmd.ExecuteReader();

        while (Reader.Read())
        {
            ListBox_Products.Items.Add(Reader["Product_Name_PK"].ToString());
        }
    }

    string DB_Input = "";
    string DB_Input2 = "";

    protected void Show_Product(object sender, EventArgs e)
    {
        DB_Input = "Select Product_Name_PK, Price, InStock from Products where Product_Name_PK = '" + ListBox_Products.SelectedValue + "'";

        DB DBCon = new DB();

        DBCon.DBMethod(DB_Input);

        DBCon.SQLCon.Open();

        SqlDataReader Reader = DBCon.SQLcmd.ExecuteReader();

        while (Reader.Read())
        {
            Label_Name.Text = "Product name:" + Reader["Product_Name_PK"].ToString();
            Label_Price.Text = "Price:" + Reader["Price"].ToString();
            Label_InStock.Text = "In stock:" + Reader["InStock"].ToString();            
        }

        DBCon.SQLCon.Dispose();
        DBCon.SQLCon.Close();


        DB_Input2 = "Select Product_Weight, Product_Height, Product_Width, Product_Depth from Specifications where Product_Name_PK = '" + ListBox_Products.SelectedValue + "'";

        DBCon = new DB();

        DBCon.DBMethod(DB_Input2);

        DBCon.SQLCon.Open();

        Reader = DBCon.SQLcmd.ExecuteReader();

        while (Reader.Read())
        {            
            Label_Weight.Text = "Weight:" + Reader["Product_Weight"].ToString();
            Label_Height.Text = "Height:" + Reader["Product_Height"].ToString();
            Label_Width.Text = "Width:" + Reader["Product_Width"].ToString();
            Label_Depth.Text = "Depth:" + Reader["Product_Depth"].ToString();             
        }

        DBCon.SQLCon.Dispose();
        DBCon.SQLCon.Close();

        switch (ListBox_Products.SelectedValue)
        {
            case "SoGo SoundLink Mini":
                Image1.ImageUrl = "SoGo SoundLink Mini.jpg";
                break;
            case "SoGo SoundLink Maxi":
                Image1.ImageUrl = "SoGo SoundLink Maxi.jpg";
                break;
            case "SoGo SoundUnLink Maximus":
                Image1.ImageUrl = "SoGo SoundUnLink Maximus.jpg";
                break;

        }

    }
}