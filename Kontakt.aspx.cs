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
        Velkomst_Label.Text = "This is our contact page";
        Info_Label.Text = "This is the info label";
        Medarbejder_Label.Text = "The Creators:" + "<br/>" + "Alexander" + "<br/>" + "Christopher" + "<br/>" + "Nicolaj" + "<br/>" + "Peter";
        Adresse_Label.Text = "Telegrafvej 9," + "<br/>" + "2750 Ballerup";
        Tlf_Label.Text = "38 17 70 00";
        Mail_Label.Text = "aia@tec.dk";

        //"+Environment.NewLine+"
        
    }

    protected void Forside_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}