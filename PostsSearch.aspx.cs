using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CategorySearch : System.Web.UI.Page
{
    Posts P = new Posts();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    /*
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "hello";
        GridView3.DataSource = P.Search2(rdoField.SelectedValue, txtSearch.Text).ToString();

        GridView3.DataBind();

      //  string Query = string.Format("select * from Post where {0} like '%{1}%'", field, value);

        ///SqlDataSource1.SelectCommandType(string.Format("select * from Post where {0} like '%{1}%'", field, value);

        
    }
    */




   









    /*
    protected void Search_Click(object sender, EventArgs e)
    {
        TextBox2.Text = txtSearch.Text;
       
        GridView3.DataSource = P.Search2(rdoField.SelectedValue, txtSearch.Text).ToString();

        GridView3.DataBind();
    }*/


    



    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataList1.DataSource = P.Search2(rdoField.SelectedValue, txtSearch.Text);

        DataList1.DataBind();


    }



    protected void DataList2_ItemCommand(Object sender, DataListCommandEventArgs e)
    {






        if (e.CommandName == "DeletePost")
        {

            String a = ((TextBox)e.Item.FindControl("txtIdp")).Text;

            int b = Int32.Parse(a.ToString());

            //    int c = Int32.Parse(txtIdMem.Text.ToString());


            Posts P = new Posts();

            String d = ((TextBox)e.Item.FindControl("txtidpost")).Text;


            int id = Int32.Parse(d.ToString());


            P.RemovePost(id);





            DataList1.DataBind();







        }


    }



  protected void DataList4_ItemCommand(Object sender, DataListCommandEventArgs e)
    {




        if (e.CommandName == "DeleteComment")
        {
            String idm = ((TextBox)e.Item.FindControl("IdMPost")).Text;

            int idmc = Int32.Parse(idm.ToString());


          ///  int c = Int32.Parse(txtIdMem.Text.ToString());


           

                Comment m = new Comment();

                String w = ((TextBox)e.Item.FindControl("IdCom")).Text;

                int we = Int32.Parse(w.ToString());

                if (m.RemoveComment(we))
                {
                    //Response.Write("done");
                }
                else
                {
                    // Response.Write("error");
                }





                DataList1.DataBind();
            
        }

    }
}