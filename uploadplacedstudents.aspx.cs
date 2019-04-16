using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class uploadplacedstudents : System.Web.UI.Page
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
        query = "select * from placedlist where regno='" + txtregno.Text + "' and sname='" + lblname.Text + "' and dept='" + lbldept.Text + "' and compname='" + DropDownList1.SelectedItem + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            MessageBox.Show("Students details already added");
        }
        else
        {
            data();
            query = "insert into placedlist(regno,sname,dept,cgpa,compname)values('" + txtregno.Text + "','" + lblname.Text + "','" + lbldept.Text + "','" + lblcgpa.Text + "','" + DropDownList1.SelectedItem + "')";
            cmd = new OleDbCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Added to Placed List");
        }
        rd.Close();
        con.Close();
        
    }
    protected void txtregno_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select Studentname,Dept,CGPA from studet where Regno='" + txtregno.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblname.Text = rd[0].ToString();
            lbldept.Text = rd[1].ToString();
            lblcgpa.Text = rd[2].ToString();
        }
        else
        {
            MessageBox.Show("Invalid Registeration number");
        }
        rd.Close();
        con.Close();
    }
}