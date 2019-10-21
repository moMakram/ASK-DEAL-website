using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile2 : System.Web.UI.Page
{
    Members m = new Members();
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
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;



        grdUpdate.DataSource = m.UpdateMem(Int32.Parse(Session["id"].ToString()));
        // grdUpdate.DataSource = m.UpdateMem(34);
        grdUpdate.DataBind();

        grdUpdate.SelectedIndex = 0;

        txtId.Text = grdUpdate.SelectedRow.Cells[0].Text;
        txtFirst.Text = grdUpdate.SelectedRow.Cells[1].Text;
        txtLast.Text = grdUpdate.SelectedRow.Cells[2].Text;
        txtGender.Text = grdUpdate.SelectedRow.Cells[3].Text;
        txtDate.Text = grdUpdate.SelectedRow.Cells[4].Text;
        txtAddress.Text = grdUpdate.SelectedRow.Cells[5].Text;
        txtMobile.Text = grdUpdate.SelectedRow.Cells[6].Text;
        txtPhone.Text = grdUpdate.SelectedRow.Cells[7].Text;
        txtMail.Text = grdUpdate.SelectedRow.Cells[8].Text;
        txtPass.Text = grdUpdate.SelectedRow.Cells[9].Text;










    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtGender_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtId.ReadOnly = true;
        m.firstname = txtFirst.Text;
        m.lastname = txtLast.Text;
        m.gender = txtGender.Text;
        m.mail = txtMail.Text;
        m.phone = txtPhone.Text;
        m.mobile = txtMobile.Text;
        m.birthdate = txtDate.Text;
        m.address = txtAddress.Text;
        m.password = txtPass.Text;
        m.id = Int32.Parse(txtId.Text);







        
            if (FileUpload2.HasFile)
            {

                
                string fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName);


                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png"
                    || fileExtension.ToLower() == ".GIF" || fileExtension.ToLower() == ".BMP"
                    || fileExtension.ToLower() == ".PBM" || fileExtension.ToLower() == ".PGM"
                    || fileExtension.ToLower() == ".PCX," || fileExtension.ToLower() == ".PPM"
                    || fileExtension.ToLower() == ".TGA" || fileExtension.ToLower() == ".TIF"
                    || fileExtension.ToLower() == ".WMF" || fileExtension.ToLower() == ".EMF"
                    )
                {



                    FileUpload2.SaveAs(Server.MapPath("upload\\" + FileUpload2.FileName));




                    m.img = FileUpload2.FileName;


                      if (m.Update())
        {
            lblMsg.Text = "Updated ";
            grdUpdate.DataBind();
            // MultiView1.ActiveViewIndex = 0;


        }

        else
        {

            lblMsg.Text = "error";
        }
                  

                }


                else
                {


                    lblMsg.Text = "please choose image";
                    return;



                }

            }

            if (!FileUpload2.HasFile)
            {
                m.img = grdUpdate.SelectedRow.Cells[10].Text;;
                if (m.Update())
                {

                    lblMsg.Text = "Updated ";
                   // MultiView1.ActiveViewIndex = 0;
                    grdUpdate.DataBind();
                }

            }
        }












      

        // lblMsg.Text = m.up(txtFirst.Text, txtLast.Text, txtGender.Text, txtDate.Text, txtAddress.Text, txtMobile.Text, txtPhone.Text, txtMail.Text, txtPass.Text);




    

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        DataList1.DataBind();
    }
}