using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "please sign in first";
    }






    protected void DataList2_ItemCommand(Object sender, DataListCommandEventArgs e)
    {
        if (e.CommandName == "comment")
        {

            Response.Redirect("sign.aspx");



        }

        if (e.CommandName == "like")
        {


            Response.Redirect("sign.aspx");

        }


        if (e.CommandName == "DeletePost")
        {



            Response.Redirect("sign.aspx");


        }





    }



    protected void DataList4_ItemCommand(Object sender, DataListCommandEventArgs e)
    {
        Response.Redirect("sign.aspx");
    }
   



}