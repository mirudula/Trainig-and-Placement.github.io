using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;

public partial class uploadstudb : System.Web.UI.Page
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
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into studet(Regno,Studentname,Dept,SYear,tenth,twelth,CGPA,Arrhistory,Standarr,Arrcount,Email,Phoneno)values('" + txtregno.Text + "','" + txtname.Text + "','" + dropcourse.SelectedItem + "','" + dropyear.SelectedItem + "','" + txttenth.Text + "','" + txttwelth.Text + "','" + txtcgpa.Text + "','" + txtarrhis.Text + "','" + txtstandingarrear.Text + "','" + txtarrearcount.Text + "','" + txtemail.Text + "','" + txtphone.Text + "')";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtarrearcount.Text = "";
        txtarrhis.Text = "";
        txtcgpa.Text = "";
        txtemail.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
        txtregno.Text = "";
        txtstandingarrear.Text = "";
        txttenth.Text = "";
        txttwelth.Text = "";

        lblac.Visible = true;
        lblac.Text = "Uploaded Successfully";
    }
    protected void txtregno_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select Regno from studet where Regno='" + txtregno.Text + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblerr.Visible = true;
            Button2.Enabled = false;
        }
        else
        {
            lblerr.Visible = false;
            Button2.Enabled = true;
        }
        rd.Close();
        con.Close();

    }
}