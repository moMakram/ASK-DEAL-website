using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Utility.ReadFromCookie("login", "user", Request) != null)
        {
            // lbl.Text = "hello";

            ///Session x= lblName.Text =  Utility.ReadFromCookie("login", "user", Request);


            int x;


            x = Int32.Parse(Session["id"].ToString());

            // lblName.Text = Session["id"].ToString();



        }
        else
        {
            Response.Redirect("index.aspx");
        }




    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        /*
        Members m = new Members();
        if (m.login(txtUser.Text, txtPass.Text))
        {
            lblMsg.Text = "User ok";
            // Response.Redirect("sign.aspx?id=5");
            Utility.CreateCookie("login", new string[] { "user", "pass" }, new string[] { txtUser.Text, txtPass.Text }, !chRem.Checked, Response);
            grd5.DataSource = m.SearchMem(txtUser.Text, txtPass.Text);
            grd5.DataBind();
            grd5.SelectedIndex = 0;
            lblAct.Text = grd5.SelectedRow.Cells[0].Text;
            // Response.Redirect("profile1.aspx");
            string k = lblAct.Text;
            Session["id"] = k;
            Response.Redirect("profile2.aspx");
        }
        else
        {
            lblMsg.Text = "error";
        }

        */
    }


    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Utility.RemoveCookies("login", Response);
        Response.Redirect("index.aspx");

    }


    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
