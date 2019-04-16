using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
using System.Drawing;
using System.Collections;
public partial class coordinatorview : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query, compname;
    ArrayList arr = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        data();
        //   query = "select compname,vdate from compcreate where cse='" + lbldept.Text + "' or ece='" + lbldept.Text + "' or eee='" + lbldept.Text + "' or mech='" + lbldept.Text + "' or civil='" + lbldept.Text + "'";
        query = "select compname,vdate from compcreate where id<>1";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            arr.Add(dr[1].ToString());
            //compname = dr[0].ToString();
        }
        dr.Close();
        con.Close();



        int cnt = arr.Count;
        for (int h = 0; h < cnt; h++)
        {
            DateTime date = DateTime.ParseExact(arr[h].ToString(), "M/d/yyyy", null);
            Calendar1.SelectedDates.Add(date);
            Calendar1.SelectedDayStyle.BackColor = Color.Red;

        }
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new OleDbConnection(connstring);
        con.Open();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            Panel1.Visible = true;
            string a = Calendar1.SelectedDate.ToShortDateString();
            data();
            query = "select compname,loc,domai,salpack from compcreate where vdate='" + a + "'";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                lblcompname.Text = rd[0].ToString();
                lblloc.Text = rd[1].ToString();
                lbldomain.Text = rd[2].ToString();
                lblsal.Text = rd[3].ToString();
            }
            rd.Close();
            con.Close();
            int cnt = arr.Count;
            for (int h = 0; h < cnt; h++)
            {
                Calendar1.SelectedDates.Add(Convert.ToDateTime(arr[h].ToString()));
                Calendar1.SelectedDayStyle.BackColor = Color.Red;

            }
        }
    }
}