using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.OleDb;
public partial class viewstudents : System.Web.UI.Page
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
        int sid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "delete from studet where id=" + sid + "";
        AccessDataSource1.DeleteCommand = query;
        AccessDataSource1.Delete();
        con.Close();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtdept = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtyr = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txttenth = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txttwelth = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txtcgpa = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txtarrhistory = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox txtstanarr = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        TextBox txtarrcount = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
        TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
        TextBox txtphone = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
        int sid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "update studet set Studentname='" + txtname.Text + "',Dept='" + txtdept.Text + "',SYear='" + txtyr.Text + "',tenth='" + txttenth.Text + "',twelth='" + txttwelth.Text + "',CGPA='" + txtcgpa.Text + "',Arrhistory='" + txtarrhistory.Text + "',Standarr='" + txtstanarr.Text + "',Arrcount='" + txtarrcount.Text + "',Email='" + txtemail.Text + "',Phoneno='" + txtphone.Text + "' where id=" + sid + "";
        AccessDataSource1.UpdateCommand= query;
        AccessDataSource1.Update();
        con.Close();
        GridView1.DataBind();
    }
}