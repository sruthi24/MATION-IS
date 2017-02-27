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
        if (Page.IsPostBack)
        {
            //Response.RedirectPermanent("Default.aspx", true);
        }
     
    }
    protected void Save(object sender, EventArgs e)
    {
        Console.WriteLine("Dolly");
        // Response.RedirectPermanent(New);
        Session.Contents.RemoveAll();
        Session.Clear();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        Console.Write("I want to get redirected ");
        Response.Redirect("Register.aspx");
        //}
    }
}
