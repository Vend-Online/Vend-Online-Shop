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
        {
            if (Session["Login"] != null && Session["Login_User"].ToString() == "User")
            {
                Login_User.Text = "Du er nu logget ind som bruger";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}