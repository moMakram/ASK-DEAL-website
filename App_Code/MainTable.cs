using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Collections;

public abstract class MainTable
{
    protected string ProcedureName;
    protected DB db = new DB();
    protected virtual bool LoadProperties2List(string TypeOfOperation)
    {
        return false;
    }

    public bool Add()
    {
        return LoadProperties2List("a");
    }

    public bool Delete()
    {
        return LoadProperties2List("d");
    }

    public bool Update()
    {
        return LoadProperties2List("u");
    }



}
