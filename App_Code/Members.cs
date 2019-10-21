using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;

public class Members:MainTable
{

    #region fields
   
    private int _id;
    private string _firstname;
    private string _lastname;
    private string _gender;
    private string _birhtdate;
    private string _address;
    private string _mobile;
    private string _phone;
    private string _mail;
    private string _password;
    private string _img;

    private Posts _po;
#endregion

    #region proberties
    public string address
    {
        get
        {
            return _address;
        }
        set
        {
            _address = value;
        }
    }

    public string birthdate
    {
        get
        {
            return _birhtdate;
        }
        set
        {
            _birhtdate = value;
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

    public string firstname
    {
        get
        {
            return _firstname;
        }
        set
        {
            _firstname = value;
        }
    }

    public string lastname
    {
        get
        {
            return _lastname;
        }
        set
        {
            _lastname = value;
        }
    }

    public string mail
    {
        get
        {
            return _mail;
        }
        set
        {
            _mail = value;
        }
    }

    public string mobile
    {
        get
        {
            return _mobile;
        }
        set
        {
            _mobile = value;
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

    public string phone
    {
        get
        {
            return _phone;
        }
        set
        {
            _phone = value;
        }
    }


    public string gender
    {
        get
        {
            return _gender;
        }
        set
        {
            _gender = value;
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

    public Posts Posts
    {
        get
        {
            return _po;
        }
        set
        {
            _po = value;
        }
    }

    public string register()
    {
        if (Add())
        {
            return "User added successfully";

        }
        else
        {

            return "User not added ";

        }
    }

    public string register(string firstname, string lastname, string gender, string birthdate, string address, string mobile, string phone, string mail, string password, string img)
    {
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
        this.birthdate = birthdate;
        this.address = address;
        this.mobile = mobile;
        this.phone = phone;
        this.mail = mail;
        this.password = password;
        this.img = img;

     return register();


    }

    public bool login()
    {
       return login(firstname, password);
    }

    public bool login(string firstname, string password)
    {
        string query = String.Format(" Select * From Member Where firstname='{0}' and password='{1}'", firstname, password);
        if (db.RunQuery(query).Rows.Count == 1)
            return true;
        else
            return false;
    }

    public bool ChangePassword(string firstname, string NewPassword)
    {
        throw new System.NotImplementedException();
    }

    public bool UnSubscripe(string firstname)
    {
        /*
         this.firstname = firstname;
         return Delete();
         * */


        string query = String.Format(" DELETE FROM Member Where firstname='{0}' ", firstname);
        if (db.RunQuery(query).Rows.Count == 1)
            return true;
        else
            return false;
    }

    public string EditProfile()
    {
        throw new System.NotImplementedException();
    }

    public string EditProfile(string firstname, string lastname, string gender, string birthdate, string address, string mobile, string phone, string mail, string password)
    {
        throw new System.NotImplementedException();
    }

    public bool CheckAvalibilty(string username)
    {
        throw new System.NotImplementedException();
    }

    protected override bool LoadProperties2List(string TypeOfOperation)
    {

        SortedList SL = new SortedList();
        SL.Add("@check", TypeOfOperation);
        SL.Add("@firstname", firstname);
        SL.Add("@lastname", lastname);
        SL.Add("@gender", gender);
        SL.Add("@birthdate", birthdate);
        SL.Add("@address", address);
        SL.Add("@mobile", mobile);
        SL.Add("@phone", phone);
        SL.Add("@mail",mail);
        SL.Add("@password", password);
        SL.Add("@id",id);
        SL.Add("@img", img);
      

        ProcedureName = "ManageMember";
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
        string Query = string.Format("select * from Member where {0} like '%{1}%'", field, value);
        //string Query = string.Format("select username,password,firstname from Member where {0} like '%{1}%'", field, value);
        return Search(Query);
    }


    public DataTable UpdateMem( int value)
    {
        string Query = string.Format("select * from Member where id like '%{0}%'", value);
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





    public DataTable SearchMem(string firstname, string password)
    {
        string queryS = String.Format(" Select * From Member Where firstname='{0}' and password='{1}'", firstname, password);
        //string Query = string.Format("select username,password,firstname from Member where {0} like '%{1}%'", field, value);
        return SearchMem(queryS);
    }



    public DataTable SearchMem(string Query)
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

    public string up()
    {
        if (Update())
        {
            return "User added successfully";

        }
        else
        {

            return "User not added ";

        }
    }

    public string up(int id,string firstname, string lastname, string gender, string birthdate, string address, string mobile, string phone, string mail, string password)
    {
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
        this.birthdate = birthdate;
        this.address = address;
        this.mobile = mobile;
        this.phone = phone;
        this.mail = mail;
        this.password = password;
       this.id = id;

        return up();


    }

     * */








   
}
