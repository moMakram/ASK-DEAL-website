using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Collections;

/// <summary>
/// Summary description for Category
/// </summary>
public class likes:MainTable
{
    #region Field

  
    private int _id;
    private int _IdMem;
    private int _IdPost;
   
  
#endregion


    #region Properties



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

  
 

    #endregion



    protected override bool LoadProperties2List(string TypeOfOperation)
    {

        SortedList SL = new SortedList();
        SL.Add("@check", TypeOfOperation);
        SL.Add("@id", id);
       
       
        SL.Add("@IdPost", IdPost);
        SL.Add("@IdMem", IdMem);



        ProcedureName = "ManageLikes";
        if (db.RunProcedure(ProcedureName, SL) == 1)
        {
            return true;

        }
        else
        {
            return false;
        }



    }






    public DataTable Search(string field, int value , string field2, int value2)
    {
        string Query = string.Format("select * from likes where {0} like '%{1}%' AND {2} like '%{3}%'", field, value, field2, value2);
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








}