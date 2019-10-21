using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Collections;

/// <summary>
/// Summary description for Category
/// </summary>
public class Category:MainTable
{
    #region Field

    private int _CatNu;
    private int _Ordere;
    private string _CatName;
    private string _CatDesc;
    private string _img;

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


    public int Ordere
    {
        get
        {
            return _Ordere;
        }
        set
        {
           _Ordere = value;
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

    public string CatDesc
    {
        get
        {
            return _CatDesc;
        }
        set
        {
            _CatDesc = value;
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


    #endregion



    protected override bool LoadProperties2List(string TypeOfOperation)
    {

        SortedList SL = new SortedList();
        SL.Add("@check", TypeOfOperation);
        SL.Add("@CatNu",CatNu);
        SL.Add("@CatName", CatName);
        SL.Add("@CatDesc", CatDesc);
        SL.Add("@Ordere", Ordere);
        SL.Add("@img", img);
      

        ProcedureName = "ManageCategory";
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


    public bool RemoveCategory(int CatNU)
    {
        /*
         this.firstname = firstname;
         return Delete();
         * */


        string query = String.Format(" DELETE FROM Category Where CatNu='{0}' ", CatNU);
        if (db.RunQuery(query).Rows.Count == 1)
            return true;
        else
            return false;
    }

    public string GetNextCatNum()
    {
        string query = "select Max(CatNu)+1 from category";
       return Search(query).Rows[0][0].ToString();
    }



}