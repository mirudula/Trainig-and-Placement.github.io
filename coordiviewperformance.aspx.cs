using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class coordiviewperformance : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        data();
        query = "select stuname from resultdet where sturegno='" + dropregno.SelectedItem + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblsname.Text = dr[0].ToString();
            Panel1.Visible = true;
            lblack.Visible = false;
        }
        else
        {
            lblack.Visible = true;
            Panel1.Visible = false;
        }
        dr.Close();
        con.Close();

        data();
        query = "select mark from resultdet where testtype='Verbal' and sturegno='" + dropregno.SelectedItem + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblverbal.Text = rd[0].ToString();
        }
        rd.Close();
        data();
        query = "select mark from resultdet where testtype='Aptitude' and sturegno='" + dropregno.SelectedItem + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd1 = cmd.ExecuteReader();
        while (rd1.Read())
        {
            lblaptitude.Text = rd1[0].ToString();
        }
        rd1.Close();
        data();
        query = "select mark from resultdet where testtype='Reasoning' and sturegno='" + dropregno.SelectedItem + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd2 = cmd.ExecuteReader();
        while (rd2.Read())
        {
            lblreasoning.Text = rd2[0].ToString();
        }
        rd2.Close();
        data();
        query = "select mark from resultdet where testtype='Technical' and sturegno='" + dropregno.SelectedItem + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd3 = cmd.ExecuteReader();
        while (rd3.Read())
        {
            lbltechnical.Text = rd3[0].ToString();
        }
        rd3.Close();

        data();
        query = "select sum(mark) from resultdet where sturegno='" + dropregno.SelectedItem + "'";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        dropcourse.DataBind();
    }
}