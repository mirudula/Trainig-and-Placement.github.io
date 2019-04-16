using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class placementtips : System.Web.UI.Page
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
        query = "insert into placementtips(placetips,uplodate,uplotime,uploby)values('" + TextBox1.Text + "','" + System.DateTime.Today.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "','Coordinator')";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        MessageBox.Show("Placement Tips added");
    }
}