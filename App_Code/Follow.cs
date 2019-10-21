using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Collections;

/// <summary>
/// Summary description for Category
/// </summary>
public class Follow:MainTable
{
    #region Field

   
    private int _CatNu;
    private int _IdMem;
    private int _id;
    private string _CatName;
   

#endregion


    #region Properties
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


    public string CatName
    {
        get
        {
            return _CatName;
        }
        set
        {
            _CatName = value;
        }
    }


   
  



  

    #endregion



    protected override bool LoadProperties2List(string TypeOfOperation)
    {

        SortedList SL = new SortedList();
        SL.Add("@check", TypeOfOperation);
        SL.Add("@CatNu",CatNu);
        SL.Add("@IdMem", IdMem);
        SL.Add("@CatName", CatName);
        SL.Add("@id", id);



        ProcedureName = "ManageFollow";
        if (db.RunProcedure(ProcedureName, SL) == 1)
        {
            return true;

        }
        else
        {
            return false;
        }



    }










    public DataTable Search(string field, string value)
    {
        string Query = string.Format("select * from Category where {0} like '%{1}%'", field, value);
        //string Query = string.Format("select username,password,firstname from Member where {0} like '%{1}%'", field, value);
        return Search(Query);
    }



    public DataTable Search(string Query)
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


    public DataTable AddFollow(int CatNU, int IdMem)
    {
      

     //   insert into Category values(@CatName,@CatDesc,@Ordere,@img)


        string query = String.Format(" insert into Category  values ",IdMem,CatNu );
        return AddFollow(query);
    }




    public DataTable AddFollow(string Query)
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






    /*
    public string GetNextCatNum()
    {
        string query = "select Max(CatNu)+1 from category";
       return Search(query).Rows[0][0].ToString();
    }*/



}