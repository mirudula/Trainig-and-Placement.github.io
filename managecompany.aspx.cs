using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.OleDb;
public partial class managecompany : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new OleDbConnection(connstring);
        con.Open();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string cname = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "delete from compcreate where compname='" + cname + "'";
        AccessDataSource1.DeleteCommand = query;
        AccessDataSource1.Delete();
        con.Close();
        GridView1.DataBind();
    }
}