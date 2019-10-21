using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /// lbl.Text = Request.QueryString["id"].ToString();
        /* if (lbl.Text == "5")
             lbl.Text = "welcome";
         else
             Response.Redirect("index.aspx");*/

        if (Utility.ReadFromCookie("login", "user", Request) != null)
        {
            // lbl.Text = "hello";
            Response.Redirect("index.aspx");
        }
        else
        {
            // Response.Redirect("index.aspx");
        }


    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*
        lbl.Text = "hhhhhh";
        lblMsg.Text = "hello";
        //f.SaveAs(Server.MapPath("upload\\" + f.FileName));
        //f.SaveAs(Server.MapPath("..//upload") + "//" + f.FileName);

        Members M = new Members();
        lblMsg.Text = M.register(txtFirst.Text, txtLast.Text, txtGender.Text, txtDate.Text, txtAddress.Text, txtMobile.Text, txtPhone.Text, txtMail.Text, txtPass.Text);
   */
         }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        
        //lblMsg.Text = "hello";
        //f.SaveAs(Server.MapPath("upload\\" + f.FileName));
        //f.SaveAs(Server.MapPath("..//upload") + "//" + f.FileName);

        Members M = new Members();





        if (fup.HasFile)
        {

            string fileExtension = System.IO.Path.GetExtension(fup.FileName);


            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png"
                || fileExtension.ToLower() == ".GIF" || fileExtension.ToLower() == ".BMP"
                || fileExtension.ToLower() == ".PBM" || fileExtension.ToLower() == ".PGM"
                || fileExtension.ToLower() == ".PCX," || fileExtension.ToLower() == ".PPM"
                || fileExtension.ToLower() == ".TGA" || fileExtension.ToLower() == ".TIF"
                || fileExtension.ToLower() == ".WMF" || fileExtension.ToLower() == ".EMF"
                )
            {



                fup.SaveAs(Server.MapPath("upload\\" + fup.FileName));




                //   lblAns.Text = fileExtension;





                M.img = fup.FileName;


                /*  if (M.Add())
                  {
                      lblMsg.Text = "well done";
                     /// MultiView1.ActiveViewIndex = 0;
                     // grd.DataBind();

                  } */


                lblMsg.Text = M.register(txtFirst.Text, txtLast.Text, txtGender.Text, txtDate.Text, txtAddress.Text, txtMobile.Text, txtPhone.Text, txtMail.Text, txtPass.Text, M.img);



            }

            else
            {


                lblAns.Text = "please choose image";
                return;



            }




        }



        if (!fup.HasFile)
        {



            M.img = "";


            lblMsg.Text = M.register(txtFirst.Text, txtLast.Text, txtGender.Text, txtDate.Text, txtAddress.Text, txtMobile.Text, txtPhone.Text, txtMail.Text, txtPass.Text, M.img);








        }

        





      ///  lblMsg.Text = M.register(txtFirst.Text, txtLast.Text, txtGender.Text, txtDate.Text, txtAddress.Text, txtMobile.Text, txtPhone.Text, txtMail.Text, txtPass.Text);


    }
}