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
        if (Session["Login"] != null && Session["Login_Admin"].ToString() == "Admin")
        {            
            if (IsPostBack) return;
            DropDownUserRigst.Items.Clear();
            DropDownUserRigst.Items.Add("Vælg rettighed");
           
            DB DBClass = new DB();
            DBClass.DBMethod("Select UserType from Bruger");
            DBClass.DBCon.Open();
            SqlDataReader Reader = DBClass.SQLcmd.ExecuteReader();

            while (Reader.Read())
            {
                DropDownUserRigst.Items.Add(Reader["UserType"].ToString());
            }
        }
    }
    protected void Create_Click(object sender, EventArgs e)
    {
        if (UserNameField.Text != "" || PWDField.Text != "" || CVR.Text != "" || Postnr.Text != "")
        {
            Sub_String Check = new Sub_String();

            if (Check.SubStr(UserNameField.Text) != "Badboy" && Check.SubStr(CVRField.Text) != "Badboy")
            {
                DB DBClass = new DB();
                switch (DropDownUserRigst.SelectedValue.ToString())
                {
                    case "Admin":
                        if (true)
                        {
                            DBClass.DBMethod("insert into Bruger values('" + UserNameField.Text + "','" + PWDField.Text + "', '"+DropDownUserRigst.SelectedValue.ToString()+"', " + CVRField.Text + "," + PostnrField.Text + ")");
                            DBClass.DBCon.Open();
                            DBClass.SQLcmd.ExecuteNonQuery();
                            DBClass.DBCon.Dispose();
                        }

                        TryAgainLabel.Text = "";
                        UserNameField.Text = "";
                        PWDField.Text = "";
                        CVR.Text = "";
                        Postnr.Text = "";
                        break;

                    case "User":
                        DBClass.DBMethod("insert into Bruger values('" + UserNameField.Text + "','" + PWDField.Text + "','" + CVR.Text + "','" + Postnr.Text + "')");
                        DBClass.DBCon.Open();
                        DBClass.SQLcmd.ExecuteNonQuery();
                        DBClass.DBCon.Dispose();

                        TryAgainLabel.Text = "";
                        UserNameField.Text = "";
                        PWDField.Text = "";
                        CVR.Text = "";
                        Postnr.Text = "";
                        break;

                    default:
                        Response.Redirect("Admin.aspx");
                        break;
                }
            }
            else
            {
                TryAgainLabel.Text = "Dit brugernavn og adgangskode må ikke indeholde karakterne: ('), (=) eller (-). Prøv venligst igen.";
                UserNameField.Text = "";
                PWDField.Text = "";
                CVR.Text = "";
                Postnr.Text = "";
            }
        }
    }    
    
    protected void DropDownListUserrights_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownUserRigst_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void UserNameField_TextChanged(object sender, EventArgs e)
    {

    }
    protected void PWDField_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CVR_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Postnr_TextChanged(object sender, EventArgs e)
    {
    
    }
}