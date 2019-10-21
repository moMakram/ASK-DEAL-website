using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class depart2 : System.Web.UI.Page
{
    Follow f = new Follow();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Utility.ReadFromCookie("login", "user", Request) != null)
        {
            // lbl.Text = "hello";

            ///Session x= lblName.Text =  Utility.ReadFromCookie("login", "user", Request);


            int x;


            x = Int32.Parse(Session["id"].ToString());

            // lblName.Text = Session["id"].ToString();

            TextBox2.Text = x.ToString();

        }
        else
        {
            Response.Redirect("index.aspx");
        }







        int catno = Int32.Parse(Request.QueryString["catno"]);

        string CatName = Request.QueryString["catName"];
     //   lbl.Text= catno.ToString();

        TextBox1.Text = catno.ToString();
        txtCatName.Text = CatName;
       // TextBox2.Text = x.;


    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        f.IdMem = Int32.Parse(TextBox2.Text);
        f.CatNu = Int32.Parse(TextBox1.Text);
        f.CatName = txtCatName.Text;

    ///  f.AddFollow(f.IdMem, f.CatNu);
    ///  
        if (f.Add())
        {

            //lbl.Text = "done";
        }
        else
        {
           // lbl.Text = "error";
        }
        

        
            //lbl.Text = "error";
        
    }
}