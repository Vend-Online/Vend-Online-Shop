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
        Kontakt_Label.Text = "This is the contact label";
        
    }
}