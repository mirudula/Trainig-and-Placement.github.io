using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class verbal : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query, a;
    int mark = 0, total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblstu.Text = Session["stu"].ToString();
        lbltest.Text = Session["type"].ToString();

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

        if (lbltest.Text == "Verbal")
        {
            data();
            query = "select * from testques where ID=1";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                lblq1.Text = rd[1].ToString();
                radioq1a1.Text = rd[2].ToString();
                radioq1a2.Text = rd[3].ToString();
                radioq1a3.Text = rd[4].ToString();
                radioq1a4.Text = rd[5].ToString();
                ans1.Text = rd[6].ToString();
            }
            rd.Close();
            con.Close();

            data();
            query = "select * from testques where ID=2";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd1 = cmd.ExecuteReader();
            while (rd1.Read())
            {
                lblq2s.Text = rd1[1].ToString();
                radioq2a1.Text = rd1[2].ToString();
                radioq2a2.Text = rd1[3].ToString();
                radioq2a3.Text = rd1[4].ToString();
                radioq2a4.Text = rd1[5].ToString();
                ans2.Text = rd1[6].ToString();
            }
            rd1.Close();
            con.Close();

            data();
            query = "select * from testques where ID=3";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd2 = cmd.ExecuteReader();
            while (rd2.Read())
            {
                lblq3.Text = rd2[1].ToString();
                radioq3a1.Text = rd2[2].ToString();
                radioq3a2.Text = rd2[3].ToString();
                radioq3a3.Text = rd2[4].ToString();
                radioq3a4.Text = rd2[5].ToString();
                ans3.Text = rd2[6].ToString();
            }
            rd2.Close();
            con.Close();

            data();
            query = "select * from testques where ID=4";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd3 = cmd.ExecuteReader();
            while (rd3.Read())
            {
                lblq4.Text = rd3[1].ToString();
                radioq4a1.Text = rd3[2].ToString();
                radioq4a2.Text = rd3[3].ToString();
                radioq4a3.Text = rd3[4].ToString();
                radioq4a4.Text = rd3[5].ToString();
                ans4.Text = rd3[6].ToString();
            }
            rd3.Close();
            con.Close();

            data();
            query = "select * from testques where ID=5";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd4 = cmd.ExecuteReader();
            while (rd4.Read())
            {
                lblq5.Text = rd4[1].ToString();
                radioq5a1.Text = rd4[2].ToString();
                radioq5a2.Text = rd4[3].ToString();
                radioq5a3.Text = rd4[4].ToString();
                radioq5a4.Text = rd4[5].ToString();
                ans5.Text = rd4[6].ToString();
            }
            rd4.Close();
            con.Close();
        }
        
        if (lbltest.Text == "Aptitude")
        {
            data();
            query = "select * from testques where ID=6";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                lblq1.Text = rd[1].ToString();
                radioq1a1.Text = rd[2].ToString();
                radioq1a2.Text = rd[3].ToString();
                radioq1a3.Text = rd[4].ToString();
                radioq1a4.Text = rd[5].ToString();
                ans1.Text = rd[6].ToString();
            }
            rd.Close();
            con.Close();

            data();
            query = "select * from testques where ID=7";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd1 = cmd.ExecuteReader();
            while (rd1.Read())
            {
                lblq2s.Text = rd1[1].ToString();
                radioq2a1.Text = rd1[2].ToString();
                radioq2a2.Text = rd1[3].ToString();
                radioq2a3.Text = rd1[4].ToString();
                radioq2a4.Text = rd1[5].ToString();
                ans2.Text = rd1[6].ToString();
            }
            rd1.Close();
            con.Close();

            data();
            query = "select * from testques where ID=8";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd2 = cmd.ExecuteReader();
            while (rd2.Read())
            {
                lblq3.Text = rd2[1].ToString();
                radioq3a1.Text = rd2[2].ToString();
                radioq3a2.Text = rd2[3].ToString();
                radioq3a3.Text = rd2[4].ToString();
                radioq3a4.Text = rd2[5].ToString();
                ans3.Text = rd2[6].ToString();
            }
            rd2.Close();
            con.Close();

            data();
            query = "select * from testques where ID=9";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd3 = cmd.ExecuteReader();
            while (rd3.Read())
            {
                lblq4.Text = rd3[1].ToString();
                radioq4a1.Text = rd3[2].ToString();
                radioq4a2.Text = rd3[3].ToString();
                radioq4a3.Text = rd3[4].ToString();
                radioq4a4.Text = rd3[5].ToString();
                ans4.Text = rd3[6].ToString();
            }
            rd3.Close();
            con.Close();

            data();
            query = "select * from testques where ID=10";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd4 = cmd.ExecuteReader();
            while (rd4.Read())
            {
                lblq5.Text = rd4[1].ToString();
                radioq5a1.Text = rd4[2].ToString();
                radioq5a2.Text = rd4[3].ToString();
                radioq5a3.Text = rd4[4].ToString();
                radioq5a4.Text = rd4[5].ToString();
                ans5.Text = rd4[6].ToString();
            }
            rd4.Close();
            con.Close();
            
        }

        if (lbltest.Text == "Reasoning")
        {
            data();
            query = "select * from testques where ID=11";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                lblq1.Text = rd[1].ToString();
                radioq1a1.Text = rd[2].ToString();
                radioq1a2.Text = rd[3].ToString();
                radioq1a3.Text = rd[4].ToString();
                radioq1a4.Text = rd[5].ToString();
                ans1.Text = rd[6].ToString();
            }
            rd.Close();
            con.Close();

            data();
            query = "select * from testques where ID=12";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd1 = cmd.ExecuteReader();
            while (rd1.Read())
            {
                lblq2s.Text = rd1[1].ToString();
                radioq2a1.Text = rd1[2].ToString();
                radioq2a2.Text = rd1[3].ToString();
                radioq2a3.Text = rd1[4].ToString();
                radioq2a4.Text = rd1[5].ToString();
                ans2.Text = rd1[6].ToString();
            }
            rd1.Close();
            con.Close();

            data();
            query = "select * from testques where ID=13";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd2 = cmd.ExecuteReader();
            while (rd2.Read())
            {
                lblq3.Text = rd2[1].ToString();
                radioq3a1.Text = rd2[2].ToString();
                radioq3a2.Text = rd2[3].ToString();
                radioq3a3.Text = rd2[4].ToString();
                radioq3a4.Text = rd2[5].ToString();
                ans3.Text = rd2[6].ToString();
            }
            rd2.Close();
            con.Close();

            data();
            query = "select * from testques where ID=14";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd3 = cmd.ExecuteReader();
            while (rd3.Read())
            {
                lblq4.Text = rd3[1].ToString();
                radioq4a1.Text = rd3[2].ToString();
                radioq4a2.Text = rd3[3].ToString();
                radioq4a3.Text = rd3[4].ToString();
                radioq4a4.Text = rd3[5].ToString();
                ans4.Text = rd3[6].ToString();
            }
            rd3.Close();
            con.Close();

            data();
            query = "select * from testques where ID=15";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd4 = cmd.ExecuteReader();
            while (rd4.Read())
            {
                lblq5.Text = rd4[1].ToString();
                radioq5a1.Text = rd4[2].ToString();
                radioq5a2.Text = rd4[3].ToString();
                radioq5a3.Text = rd4[4].ToString();
                radioq5a4.Text = rd4[5].ToString();
                ans5.Text = rd4[6].ToString();
            }
            rd4.Close();
            con.Close();
        }
        if (lbltest.Text == "Technical")
        {
            data();
            query = "select * from testques where ID=16";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                lblq1.Text = rd[1].ToString();
                radioq1a1.Text = rd[2].ToString();
                radioq1a2.Text = rd[3].ToString();
                radioq1a3.Text = rd[4].ToString();
                radioq1a4.Text = rd[5].ToString();
                ans1.Text = rd[6].ToString();
            }
            rd.Close();
            con.Close();

            data();
            query = "select * from testques where ID=17";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd1 = cmd.ExecuteReader();
            while (rd1.Read())
            {
                lblq2s.Text = rd1[1].ToString();
                radioq2a1.Text = rd1[2].ToString();
                radioq2a2.Text = rd1[3].ToString();
                radioq2a3.Text = rd1[4].ToString();
                radioq2a4.Text = rd1[5].ToString();
                ans2.Text = rd1[6].ToString();
            }
            rd1.Close();
            con.Close();

            data();
            query = "select * from testques where ID=18";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd2 = cmd.ExecuteReader();
            while (rd2.Read())
            {
                lblq3.Text = rd2[1].ToString();
                radioq3a1.Text = rd2[2].ToString();
                radioq3a2.Text = rd2[3].ToString();
                radioq3a3.Text = rd2[4].ToString();
                radioq3a4.Text = rd2[5].ToString();
                ans3.Text = rd2[6].ToString();
            }
            rd2.Close();
            con.Close();

            data();
            query = "select * from testques where ID=19";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd3 = cmd.ExecuteReader();
            while (rd3.Read())
            {
                lblq4.Text = rd3[1].ToString();
                radioq4a1.Text = rd3[2].ToString();
                radioq4a2.Text = rd3[3].ToString();
                radioq4a3.Text = rd3[4].ToString();
                radioq4a4.Text = rd3[5].ToString();
                ans4.Text = rd3[6].ToString();
            }
            rd3.Close();
            con.Close();

            data();
            query = "select * from testques where ID=20";
            cmd = new OleDbCommand(query, con);
            OleDbDataReader rd4 = cmd.ExecuteReader();
            while (rd4.Read())
            {
                lblq5.Text = rd4[1].ToString();
                radioq5a1.Text = rd4[2].ToString();
                radioq5a2.Text = rd4[3].ToString();
                radioq5a3.Text = rd4[4].ToString();
                radioq5a4.Text = rd4[5].ToString();
                ans5.Text = rd4[6].ToString();
            }
            rd4.Close();
            con.Close();
        }
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new OleDbConnection(connstring);
        con.Open();
    }
    string cans1, cans2, cans3, cans4,cans5;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (radioq1a1.Checked == true)
        {
            cans1 = radioq1a1.Text;
        }
        else if (radioq1a2.Checked == true)
        {
            cans1 = radioq1a2.Text;
        }
        else if (radioq1a3.Checked == true)
        {
            cans1 = radioq1a3.Text;
        }
        else if (radioq1a4.Checked == true)
        {
            cans1 = radioq1a4.Text;
        }
       

        if (radioq2a1.Checked == true)
        {
            cans2 = radioq2a1.Text;
        }
        else if (radioq2a2.Checked == true)
        {
            cans2 = radioq2a2.Text;
        }
        else if (radioq2a3.Checked == true)
        {
            cans2 = radioq2a3.Text;
        }
        else if (radioq2a4.Checked == true)
        {
            cans2 = radioq2a4.Text;
        }

        if (radioq3a1.Checked == true)
        {
            cans3 = radioq3a1.Text;
        }
        else if (radioq3a2.Checked == true)
        {
            cans3 = radioq3a2.Text;
        }
        else if (radioq3a3.Checked == true)
        {
            cans3 = radioq3a3.Text;
        }
        else if (radioq3a4.Checked == true)
        {
            cans3 = radioq3a4.Text;
        }

        if (radioq4a1.Checked == true)
        {
            cans4 = radioq4a1.Text;
        }
        else if (radioq4a2.Checked == true)
        {
            cans4 = radioq4a2.Text;
        }
        else if (radioq4a3.Checked == true)
        {
            cans4 = radioq4a3.Text;
        }
        else if (radioq4a4.Checked == true)
        {
            cans4 = radioq4a4.Text;
        }

        if (radioq5a1.Checked == true)
        {
            cans5 = radioq5a1.Text;
        }
        else if (radioq5a2.Checked == true)
        {
            cans5 = radioq5a2.Text;
        }
        else if (radioq5a3.Checked == true)
        {
            cans5 = radioq5a3.Text;
        }
        else if (radioq5a4.Checked == true)
        {
            cans5 = radioq5a4.Text;
        }


        if (cans1 == ans1.Text)
        {
            mark = mark + 1;
        }
        if (cans2 == ans2.Text)
        {
            mark = mark + 1;
        }
        if (cans3 == ans3.Text)
        {
            mark = mark + 1;
        }
        if (cans4 == ans4.Text)
        {
            mark = mark + 1;
        }
        if (cans5 == ans5.Text)
        {
            mark = mark + 1;
        }
        data();
        query = "delete from resultdet where sturegno='" + lblstu.Text + "' and testtype='" + lbltest.Text + "'";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "insert into resultdet(sturegno,stuname,testtype,mark)values('" + lblstu.Text + "','" + lblname.Text + "','" + lbltest.Text + "'," + mark + ")";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("attendtest.aspx");
    }
}