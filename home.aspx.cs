using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
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

            txtIdMem.Text = x.ToString();
        }
        else
        {
            Response.Redirect("index.aspx");
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       Posts p = new Posts();

       p.descr = txtDescr.Text;
       p.CatNu = Int32.Parse(DropDownList1.SelectedValue.ToString());
    ///   p.img = "hhh";
       p.IdMem = Int32.Parse(txtIdMem.Text);

    ///   p.Add();










       if (PostFup.HasFile)
       {

           string fileExtension = System.IO.Path.GetExtension(PostFup.FileName);


           if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png"
               || fileExtension.ToLower() == ".GIF" || fileExtension.ToLower() == ".BMP"
               || fileExtension.ToLower() == ".PBM" || fileExtension.ToLower() == ".PGM"
               || fileExtension.ToLower() == ".PCX," || fileExtension.ToLower() == ".PPM"
               || fileExtension.ToLower() == ".TGA" || fileExtension.ToLower() == ".TIF"
               || fileExtension.ToLower() == ".WMF" || fileExtension.ToLower() == ".EMF"
               )
           {



               PostFup.SaveAs(Server.MapPath("upload\\" + PostFup.FileName));

              


               //   lblAns.Text = fileExtension;





               p.img = PostFup.FileName;


               if (p.Add())
               {
                 //  lblMsg.Text = "well done";
                 //  MultiView1.ActiveViewIndex = 0;
                  // grd.DataBind();

               }



           }

           else
           {


               lblAns.Text = "please choose image";
               return;



           }

           ///lblAns.Text = fileExtension;






       }
       if (!PostFup.HasFile)
       {



           p.img = "";


           if (p.Add())
           {
               

              // lblMsg.Text = "well done";
              // MultiView1.ActiveViewIndex = 0;
              // grd.DataBind();
             ///  TextBox2.Text = DataList1.FindControl("txtnu").ToString();
             ///  
             

           }









       }
            















       
        


        
        
    }



    protected void DataList2_ItemCommand(Object sender, DataListCommandEventArgs e)
    {
        if (e.CommandName == "comment")
        {
            Comment P = new Comment();

            String a = ((TextBox)e.Item.FindControl("txtidpost")).Text;

            String c = ((TextBox)e.Item.FindControl("txtcaten")).Text;

            String d = ((TextBox)e.Item.FindControl("txtCom")).Text;

            //  String e = ((TextBox)e.Item.FindControl("txtIdPost")).Text;


            ///  String b = ((TextBox)e.Item.FindControl("txtIdp")).Text;


            // String b = ((TextBox) e.Item.FindControl("tbDescription")).Text;
            // ((Label) e.Item.FindControl("lUID")).Text = a + " " + b;  txtcaten



            int b = Int32.Parse(txtIdMem.Text);


            P.IdPost = Int32.Parse(a.ToString());
            P.CatNu = Int32.Parse(c.ToString());
            P.IdMem = Int32.Parse(b.ToString());
            P.descr = d.ToString();


            if (P.Add())
            {
                Response.Write("done");
                DataList1.DataBind();
            }
            else
            {
                Response.Write("err");
            }



            TextBox2.Text = a.ToString() + b.ToString() + c.ToString() + d.ToString();

        }

        if (e.CommandName == "like")
        {

            likes l = new likes();



            String a = ((TextBox)e.Item.FindControl("txtidpost")).Text;

           
            int b = Int32.Parse(txtIdMem.Text);


            l.IdPost = Int32.Parse(a.ToString());

            l.IdMem = b;
       

            GridView1.DataSource = l.Search("IdMem", l.IdMem , "IdPost" , l.IdPost);
            GridView1.DataBind();

            if (GridView1.Rows.Count != 0)
            {
                Response.Write("you like this");


            }


            else
            {
                if (l.Add())
                {

                    Response.Write("like you mak ");

                }

            }



           
        }


        if (e.CommandName == "DeletePost")
        {

            String a = ((TextBox)e.Item.FindControl("txtIdp")).Text;

           int b = Int32.Parse(a.ToString());

             int c = Int32.Parse(txtIdMem.Text.ToString());

             if (c == b)
             {
                 Posts P = new Posts();

                 String d = ((TextBox)e.Item.FindControl("txtidpost")).Text;


               int id = Int32.Parse(d.ToString());


               P.RemovePost(id);
               
                  
               
             

                DataList1.DataBind();

             }





        }


       


    }



    protected void DataList4_ItemCommand(Object sender, DataListCommandEventArgs e)
    {
        if (e.CommandName == "DeleteComment")
        {
            String idm = ((TextBox)e.Item.FindControl("IdMPost")).Text;

            int idmc = Int32.Parse(idm.ToString());


            int c = Int32.Parse(txtIdMem.Text.ToString());


            if (idmc == c)
            {

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
   



        
 


}