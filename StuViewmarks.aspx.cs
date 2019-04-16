using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class StuViewmarks : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query, a;
    int mark = 0, total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblstu.Text = Session["stu"].ToString();
        
        data();
        query = "select Studentname from studet where Regno='" + lblstu.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lblname.Text = dr[0].ToString();
        }
        dr.Close();
        con.Close();

        data();
        query = "select mark from resultdet where testtype='Verbal' and sturegno='" + lblstu.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblverbal.Text = rd[0].ToString();
        }
        rd.Close();
        data();
        query = "select mark from resultdet where testtype='Aptitude' and sturegno='" + lblstu.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd1 = cmd.ExecuteReader();
        while (rd1.Read())
        {
            lblaptitude.Text = rd1[0].ToString();
        }
        rd1.Close();
        data();
        query = "select mark from resultdet where testtype='Reasoning' and sturegno='" + lblstu.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd2 = cmd.ExecuteReader();
        while (rd2.Read())
        {
            lblreasoning.Text = rd2[0].ToString();
        }
        rd2.Close();
        data();
        query = "select mark from resultdet where testtype='Technical' and sturegno='" + lblstu.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd3 = cmd.ExecuteReader();
        while (rd3.Read())
        {
            lbltechnical.Text = rd3[0].ToString();
        }
        rd3.Close();

        data();
        query = "select sum(mark) from resultdet where sturegno='" + lblstu.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd4 = cmd.ExecuteReader();
        while (rd4.Read())
        {
            lbltotal.Text = rd4[0].ToString();
        }
        rd4.Close();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new OleDbConnection(connstring);
        con.Open();
    }
}