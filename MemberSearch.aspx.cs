using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MemberSearch : System.Web.UI.Page
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
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Members M = new Members();
        grd.DataSource =   M.Search(rdoField.SelectedValue, txtSearch.Text);
        grd.DataBind();
        grd.SelectedIndex = -1;
        btnRemove.Enabled = false;
    }
    protected void grd_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnRemove.Enabled = true;
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "9999999";
      
        Members h = new Members();
        lblMsg.Text = grd.SelectedRow.Cells[1].Text;
        
        try
        {
            h.UnSubscripe(grd.SelectedRow.Cells[2].Text);

        
        //btnRemove.Enabled = false;
        
            lblMsg.Text = "welldone";
            grd.DataBind();
        }
        catch(SqlException ex)
        {
            
            lblMsg.Text =ex.Message;
        }

    }
}