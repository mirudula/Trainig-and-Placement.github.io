using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class coordinatormsgs : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        data();
        query = "select * from studet where Regno='" + Session["stu"].ToString() + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            txtregno.Text = rd[1].ToString();
            txtname.Text = rd[2].ToString();
            lblcourse.Text = rd[3].ToString();
        }
        rd.Close();
        con.Close();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new OleDbConnection(connstring);
        con.Open();
    }
}