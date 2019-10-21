using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;
using System.Web.UI.WebControls;

public class Posts:MainTable
{
    
    private int _id;
    private int _CatNu;
    private int _IdMem;
    private string _descr;
    private string _img;



    public int id
    {
        get
        {
            return _id;
        }
        set
        {
            _id = value;

        }
    }

    public int CatNu
    {
        get
        {
            return _CatNu;
        }
        set
        {
            _CatNu = value;
        }
    }

    public int IdMem
    {
        get
        {
            return _IdMem;
        }
        set
        {
            _IdMem = value;
        }
    }

    public string descr
    {
        get
        {
            return _descr;
        }
        set
        {
            _descr = value;
        }
    }



    public string img
    {
        get
        {
            return _img;
        }
        set
        {
            _img = value;
        }
    }



   protected override bool LoadProperties2List(string TypeOfOperation)
    {

        SortedList SL = new SortedList();
        SL.Add("@check", TypeOfOperation);
        SL.Add("@id", id);
        SL.Add("@descr",descr);
        SL.Add("@img", img);
        SL.Add("@CatNu", CatNu);
        SL.Add("@IdMem", IdMem);


        ProcedureName = "ManagePost";
        if (db.RunProcedure(ProcedureName, SL) == 1)
        {
            return true;
        }
        else
        {
            return false;
        }

       

    }


   public SqlDataSource Search()
   {
       string Query = string.Format("select * from Category ");
       //string Query = string.Format("select username,password,firstname from Member where {0} like '%{1}%'", field, value);
       return Search(Query);
   }


   public SqlDataSource Search(string Query)
   {
       try
       {
           return db.RunQuery2(Query);
       }
       catch
       {
           return new SqlDataSource();

       }
   }






   public DataTable Search2(string field, string value)
   {
       string Query = string.Format("select * from Category where {0} like '%{1}%'", field, value);
       //string Query = string.Format("select username,password,firstname from Member where {0} like '%{1}%'", field, value);
       return Search2(Query);
   }



   public DataTable Search2(string Query)
   {
       try
       {
           return db.RunQuery(Query);
       }
       catch
       {
           return new DataTable();

       }
   }



   public bool RemovePost(int id)
   {
       /*
        this.firstname = firstname;
        return Delete();
        * */


       string query = String.Format(" DELETE FROM Post Where id='{0}' ", id);
       if (db.RunQuery(query).Rows.Count == 1)
           return true;
       else
           return false;
   }



}
