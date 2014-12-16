using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Velkomst_Label.Text = "Velkommen til vores hjemmeside";
        Partner_Label.Text = "Din fortukne vendingmachine partner";

    }
    protected void Login_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Kontakt_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Kontakt.aspx");
    }
}