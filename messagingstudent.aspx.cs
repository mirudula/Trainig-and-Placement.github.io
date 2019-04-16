using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class messagingstudent : System.Web.UI.Page
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
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "delete from studentmsgdet where ID=" + id + "";
        cmd = new OleDbCommand(query, con);
        AccessDataSource1.DeleteCommand = query;
        AccessDataSource1.Delete();
        con.Close();
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into stumsgdet(msg,mdate,mtime,dept)values('" + txtmsg.Text + "','" + System.DateTime.Today.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "','" + dropcourse.SelectedItem + "')";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtmsg.Text = "";
        GridView1.DataBind();
    }
}