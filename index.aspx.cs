using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class index : System.Web.UI.Page
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
        if (DropDownList1.SelectedItem.Text == "Admin")
        {
            data();
            query = "select uname,pwd from adminlogin where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                lblerr.Visible = true;
            }
            rd.Close();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.Text == "Co-ordinator")
        {
            data();
            query = "select uname,pwd from staffdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Response.Redirect("staffhome.aspx");
            }
            else
            {
                lblerr.Visible = true;
            }
            rd.Close();
            con.Close();
        }
        else
        {
            data();
            query = "select Regno from studet where Regno='" + txtusername.Text + "' and Regno='" + txtpassword.Text + "'";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["stu"] = txtusername.Text.ToString();
                Response.Redirect("placementcalendar.aspx");
            }
            else
            {
                lblerr.Visible = true;
            }
            rd.Close();
            con.Close();
        }
    }
}