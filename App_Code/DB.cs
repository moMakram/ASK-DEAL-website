using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for DB
/// </summary>
public class DB
{

    SqlConnection conn;
    SqlCommand cmd;
    DataTable tbl;
    SqlDataSource sql;
    SqlDataSourceCommandEventHandler sml;

    private void Intialize(CommandType CT , string DBCall)
    {

         conn = new SqlConnection();
         cmd = new SqlCommand();


        //Requirements
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();
        cmd.Connection = conn;
        cmd.CommandType = CT;
        cmd.CommandText = DBCall;
        conn.Open();
    }


    public int RunProcedure(string ProcedureName, SortedList ParaValue)
    {



        ///Declare


        Intialize(CommandType.StoredProcedure,ProcedureName);


        for (int x = 0; x < ParaValue.Count; x++)
        {
            try
            {

                cmd.Parameters.AddWithValue(ParaValue.GetKey(x).ToString(), ParaValue.GetByIndex(x).ToString());
            }
            catch
            {
                ;
            }
        }

        return RunUpdate();


    }

    public int RunUpdate(string InsDellUpd)
    {
        Intialize(CommandType.Text, InsDellUpd);
        return RunUpdate();
    }


        private int RunUpdate(){

        //DB Work
       
 
        try
        {

            int x =  cmd.ExecuteNonQuery();
            conn.Close();
            return x;

        }
        catch (SqlException ex)
        {
            conn.Close();
            return ex.Number;

        }




       









    }


        public DataTable RunQuery( string Select)
        {
            Intialize(CommandType.Text, Select);
            tbl = new DataTable();
            tbl.Load(cmd.ExecuteReader());
            
            conn.Close();
            return tbl;

        }


        public SqlDataSource RunQuery2(string Select)
        {
            Intialize(CommandType.Text, Select);
            sql = new SqlDataSource();
            sml.Equals(cmd.ExecuteReader());

            conn.Close();
            return sql;

        }




}	
