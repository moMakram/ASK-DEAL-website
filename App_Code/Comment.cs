using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Collections;

/// <summary>
/// Summary description for Category
/// </summary>
public class Comment:MainTable
{
    #region Field

    private int _CatNu;
    private int _id;
    private int _IdMem;
    private int _IdPost;
    private string _descr;
  
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


    public int IdPost
    {
        get
        {
            return _IdPost;
        }
        set
        {
            _IdPost = value;
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

 

    #endregion



    protected override bool LoadProperties2List(string TypeOfOperation)
    {

        SortedList SL = new SortedList();
        SL.Add("@check", TypeOfOperation);
        SL.Add("@id", id);
        SL.Add("@CatNu",CatNu);
        SL.Add("@descr", descr);
        SL.Add("@IdPost", IdPost);
        SL.Add("@IdMem", IdMem);
      
      

        ProcedureName = "ManageComment";
        if (db.RunProcedure(ProcedureName, SL) == 1)
        {
            return true;

        }
        else
        {
            return false;
        }



    }


    public bool RemoveComment(int id)
    {
        /*
         this.firstname = firstname;
         return Delete();
         * */


        string query = String.Format(" DELETE FROM Comment Where id='{0}' ", id);
        if (db.RunQuery(query).Rows.Count == 1)
            return true;
        else
            return false;
    }








}