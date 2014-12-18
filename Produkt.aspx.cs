using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Web.Security;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Login"] != null)
        {
            
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

        string DB_Input = "";

        if (IsPostBack) return;

        ListBox_Produkt.Items.Clear();


        DB_Input = "Select Produkt_Name_PK from Produkt";

        DB DBCon = new DB();

        DBCon.DBMethod(DB_Input);

         DBCon.DBCon.Open();

        SqlDataReader Reader = DBCon.SQLcmd.ExecuteReader();

        while (Reader.Read())
        {
            ListBox_Produkt.Items.Add(Reader["Produkt_Name_PK"].ToString());
        }
    }

    string DB_Input = "";
    string DB_Input2 = "";

    protected void Vis_Produkt(object sender, EventArgs e)
    {
        DB_Input = "Select Produkt_Name_PK, Pris, Antal from Produkt where Produkt_Name_PK = '" + ListBox_Produkt.SelectedValue + "'";

        DB DBCon = new DB();

        DBCon.DBMethod(DB_Input);

        DBCon.DBCon.Open();

        SqlDataReader Reader = DBCon.SQLcmd.ExecuteReader();

        while (Reader.Read())
        {
            Label_Name.Text = "Produkt navn:" + Reader["Produkt_Name_PK"].ToString();
            Label_Pris.Text = "Pris:" + Reader["Pris"].ToString();
            Label_ProdOp.Text = "Produkt oplysninger:" + Reader["Produkt_Name_PK"].ToString();
        }

        DBCon.DBCon.Dispose();
        DBCon.DBCon.Close();

        switch (ListBox_Produkt.SelectedValue)
        {
            case "Coca Cola":
                Image1.ImageUrl = "/Vend-Online-Shop/Images/Cola.jpg";
                break;
            case "Faxe Kondi":
                Image1.ImageUrl = "/Vend-Online-Shop/Images/faxe.jpg";
                break;
            case "Tuborg":
                Image1.ImageUrl = "/Vend-Online-Shop/Images/Tuborg.jpg";
                break;
            case "Snickers":
                Image1.ImageUrl = "/Vend-Online-Shop/Images/Snickers.jpg";
                break;
            case "Sour Cream & Onion":
                Image1.ImageUrl = "/Vend-Online-Shop/Images/Lays.jpg";
                break;
        }
    }
    protected void Forside_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}