using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CategorySearch : System.Web.UI.Page
{
    Category Cat = new Category();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

      grd.DataSource =   Cat.Search(rdoField.SelectedValue,txtSearch.Text);
      grd.DataBind();
      lblMsg.Text = "";
      btnUpdate.Enabled = false;
      btnRemove.Enabled = false;
      grd.SelectedIndex = -1;



    }
    protected void grd_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnRemove.Enabled = true;
        btnUpdate.Enabled = true;
    }
  
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Image1.Visible = true;
        txtCatNu.Visible = true;
        lblCatNu.Visible = true;
        lblTitle.Text = "Update Category";

        txtCatNu.Text = grd.SelectedRow.Cells[1].Text;
        
        txtName.Text = grd.SelectedRow.Cells[2].Text;
        txtDesc.Text = grd.SelectedRow.Cells[3].Text;
        txtOrder.Text = grd.SelectedRow.Cells[4].Text;
        

        txtCatNu.ReadOnly = true;
        MultiView1.ActiveViewIndex = 1;
        Image1.ImageUrl = "~\\upload\\"+ grd.SelectedRow.Cells[5].Text;

        
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txtCatNu.Visible = false;
        lblCatNu.Visible = false;
        lblTitle.Text = "Add Category";
       // txtCatNu.Text = "";
        txtName.Text = "";
        txtOrder.Text = "";
        txtDesc.Text = "";
       // fup.Visible = false;

        Image1.Visible = false;
       // txtCatNu.ReadOnly = true;
        //txtCatNu.Text = Cat.GetNextCatNum();
        

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {

        Category h = new Category();
      //  lblMsg.Text = grd.SelectedRow.Cells[1].Text;

        try
        {
            //Int32.Parse(textBox1.Text)
            h.RemoveCategory(Int32.Parse(grd.SelectedRow.Cells[1].Text));


            //btnRemove.Enabled = false;

            lblMsg.Text = "welldone";
            grd.DataBind();
        }
        catch (SqlException ex)
        {

            lblMsg.Text = ex.Message;
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        lblAns.Text = "hello";
        
        Cat.CatName = txtName.Text;
        Cat.CatDesc = txtDesc.Text;
        Cat.Ordere = Int32.Parse(txtOrder.Text);
     

        if (txtCatNu.Visible)
        {
            Cat.CatNu = Int32.Parse(txtCatNu.Text);


            if (FileUpload1.HasFile)
            {

                
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);


                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png"
                    || fileExtension.ToLower() == ".GIF" || fileExtension.ToLower() == ".BMP"
                    || fileExtension.ToLower() == ".PBM" || fileExtension.ToLower() == ".PGM"
                    || fileExtension.ToLower() == ".PCX," || fileExtension.ToLower() == ".PPM"
                    || fileExtension.ToLower() == ".TGA" || fileExtension.ToLower() == ".TIF"
                    || fileExtension.ToLower() == ".WMF" || fileExtension.ToLower() == ".EMF"
                    )
                {



                    FileUpload1.SaveAs(Server.MapPath("upload\\" + FileUpload1.FileName));




                    Cat.img = FileUpload1.FileName;

                    if (Cat.Update())
                    {

                        lblMsg.Text = "Updated ";
                        MultiView1.ActiveViewIndex = 0;
                        grd.DataBind();
                    }

                }


                else
                {


                    lblAns.Text = "please choose image";
                    return;



                }

            }

            if (!FileUpload1.HasFile)
            {
                Cat.img = grd.SelectedRow.Cells[5].Text;
                if (Cat.Update())
                {

                    lblMsg.Text = "Updated ";
                    MultiView1.ActiveViewIndex = 0;
                    grd.DataBind();
                }

            }
        }

            /* for add */
        else
        {

            if (FileUpload1.HasFile)
            {

                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);


                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png"
                    || fileExtension.ToLower() == ".GIF" || fileExtension.ToLower() == ".BMP"
                    || fileExtension.ToLower() == ".PBM" || fileExtension.ToLower() == ".PGM"
                    || fileExtension.ToLower() == ".PCX," || fileExtension.ToLower() == ".PPM"
                    || fileExtension.ToLower() == ".TGA" || fileExtension.ToLower() == ".TIF"
                    || fileExtension.ToLower() == ".WMF" || fileExtension.ToLower() == ".EMF"
                    )
                {



                    FileUpload1.SaveAs(Server.MapPath("upload\\" + FileUpload1.FileName));




                    //   lblAns.Text = fileExtension;





                    Cat.img = FileUpload1.FileName;


                    if (Cat.Add())
                    {
                        lblMsg.Text = "well done";
                        MultiView1.ActiveViewIndex = 0;
                        grd.DataBind();

                    }



                }

                else
                {


                    lblAns.Text = "please choose image";
                      return;



                }

                ///lblAns.Text = fileExtension;



              


            }
            if(!FileUpload1.HasFile)
            {



                Cat.img = "";


                if (Cat.Add())
                {
                    lblMsg.Text = "well done";
                    MultiView1.ActiveViewIndex = 0;
                    grd.DataBind();

                }









            }
            
        }
        
    }
    protected void txtCatNu_TextChanged(object sender, EventArgs e)
    {

    }



}