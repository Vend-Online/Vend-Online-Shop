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

    }
    protected void Username_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Password_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Loginpage_loginbutton_Click(object sender, EventArgs e)
    {
        if (true)
        {
            string USR = "", PWD = "";
            string Type = "";
            if (Username.Text != "" && Password.Text != "")
            {                
                SqlConnection DBCon = new SqlConnection("Data Source='.\';Initial Catalog=Vending;Integrated Security=True");
                SqlCommand SQLCmd = new SqlCommand("select * from Bruger where UserName_PK = '" + Username.Text + "'and UserPwd = '" + Password.Text + "' ", DBCon);                
                SQLCmd.Connection.Open();
                //string PWD1 = FormsAuthentication.HashPasswordForStoringInConfigFile(Password.Text, "SHA256");
                

                SqlDataReader Reader = SQLCmd.ExecuteReader();              
                
                while (Reader.Read())
                {
                    USR = Reader["UserName_PK"].ToString();
                    PWD = Reader["UserPwd"].ToString();
                    
                    Type = Reader["UserType"].ToString();
                }                
                SQLCmd.Connection.Close();

                if (USR == Username.Text && PWD == Password.Text)
                {
                    Session["Login"] = Username.Text;
                    if (Type == "User")
                    {
                        Session["Login_User"] = Type.ToString();
                        Response.Redirect("Users.aspx");
                    }
                    else if (Type == "Admin")
                    {
                        Session["Login_Admin"] = Type.ToString();
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        //Response.Redirect("Login_Fejl.aspx");
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                    }
                }
                else
                {
                    //Response.Redirect("Login_fejl.aspx");
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                }
            }
            else
            {
                //Response.Redirect("Login_fejl.aspx");
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
    }
    protected void Forside_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}