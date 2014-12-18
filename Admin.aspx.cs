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
        try
        {
        if (Session["Login"] != null && Session["Login_Admin"].ToString() == "Admin")
                {
                    Login_Admin.Text = "Du er nu logget ind som admin!";
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }        
        }
        catch (Exception)
        {
            Session["Login_User"] = null;
            Session["Login"] = null;
            Response.Redirect("Login.aspx");
            throw;
        }
        
    }
    protected void Produkt_Click(object sender, EventArgs e)
    {
        Response.Redirect("Produkt.aspx");
    }   
    protected void Brugeroprettelse_Click(object sender, EventArgs e)
    {
        Response.Redirect("Brugeroprettelse.aspx");
    }
}