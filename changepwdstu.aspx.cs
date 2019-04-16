using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class changepwdstu : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "select pwd from adminlogin where pwd='" + txtold.Text + "' and uname='admin'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            data();
            query = "update adminlogin set pwd='" + txtnew.Text + "' where pwd='" + txtold.Text + "'";
            cmd = new OleDbCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblerr.Visible = true;
            lblerr.Text = "Password Updated Successfully!!!";
        }
        else
        {
            lblerr.Visible = true;
            lblerr.Text = "Invalid Old Password";
        }
        rd.Close();
        con.Close();
    }
}