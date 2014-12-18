using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Web.Security;
using System.Security.Cryptography;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] != null && Session["Login_Admin"].ToString() == "Admin")
        {
            PWDField.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(PWDField.Text, "SHA1");      
            
            if (IsPostBack) return;
            DropDownUserRigst.Items.Clear();
            DropDownUserRigst.Items.Add("Vælg rettighed");
           
            DB DBClass = new DB();
            DBClass.DBMethod("Select UserType from Bruger");
            DBClass.DBCon.Open();
            SqlDataReader Reader = DBClass.SQLcmd.ExecuteReader();

            DropDownUserRigst.Items.Add("Admin");
            DropDownUserRigst.Items.Add("User");
        }
        else if (Session["Login"] != null && Session["Login_User"].ToString() == "User")
        {
            Response.Redirect("Users.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Create_Click(object sender, EventArgs e)
    {
        if (UserNameField.Text != "" || PWDField.Text != "" || CVRField.Text != "" || PostnrField.Text != "")
        {
            Sub_String Check = new Sub_String();

            if (Check.SubStr(UserNameField.Text) != "Badboy" && Check.SubStr(CVRField.Text) != "Badboy")
            {
                DB DBClass = new DB();
                switch (DropDownUserRigst.SelectedValue.ToString())
                {
                    case "Admin":
                    case "User":
                        DBClass.DBMethod("insert into Bruger values('" + UserNameField.Text + "','" + PWDField.Text + "', '"+DropDownUserRigst.SelectedValue.ToString()+"', '" + CVRField.Text + "','" + PostnrField.Text + "')");
                        DBClass.DBCon.Open();
                        DBClass.SQLcmd.ExecuteNonQuery();
                        DBClass.DBCon.Dispose();                        

                        TryAgainLabel.Text = "";
                        UserNameField.Text = "";
                        PWDField.Text = "";
                        CVRField.Text = "";
                        PostnrField.Text = "";
                        break;                   
                }
            }
            else
            {
                TryAgainLabel.Text = "Dit brugernavn og adgangskode må ikke indeholde karakterne: ('), (=) eller (-). Prøv venligst igen.";
                UserNameField.Text = "";
                PWDField.Text = "";
                CVRField.Text = "";
                PostnrField.Text = "";
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
    protected void Return_Admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}