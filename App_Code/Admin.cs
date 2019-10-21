using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

public class Admin:MainTable
{
    private string _username;
    private string _password;
    private int _id;

    public String username
    {
        get
        {
            return _username;
        }
        set
        {
            _username = value;
        }
    }

    public string password
    {
        get
        {
            return _password;
        }
        set
        {
            _password = value;
        }
    }

    /*
    public string id
    {
        get
        {
            return _id;

        }
        set
        {
            _id = value;
        }
    }*/

    

    public bool login()
    {
        return login(username,password);
    }


    public bool login(string username, string password)
    {
        string query = String.Format(" Select * From Admin Where username='{0}' and password='{1}'", username, password);
        if (db.RunQuery(query).Rows.Count == 1)
            return true;
        else
            return false;
    }
}
