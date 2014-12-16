using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] != null && Session["Login_Admin"].ToString() == "Admin")
        {
            Login_Admin.Text = "Du er nu logget ind som admin!";
            Response.AddHeader("REFRESH", "3;URL=Produkt.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }     
    }
}