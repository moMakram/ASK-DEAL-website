using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Admin m = new Admin();
        if (m.login(txtUser.Text, txtPass.Text))
        {
           /// lblMsg.Text = "User ok";
            // Response.Redirect("sign.aspx?id=5");
            Utility.CreateCookie("admin", new string[] { "user", "pass" }, new string[] { txtUser.Text, txtPass.Text }, !chkRem.Checked, Response);
            Response.Redirect("control.aspx");
        }
        else
        {
            lblMsg.Text = "error";
        }
    }
}