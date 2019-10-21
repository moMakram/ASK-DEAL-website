using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class control : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user = Utility.ReadFromCookie("admin", "user", Request);
        if (Utility.ReadFromCookie("admin", "user", Request) != null)
        {
            ///lblo.Text = user;
        }
        else
        {
            Response.Redirect("admin.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}