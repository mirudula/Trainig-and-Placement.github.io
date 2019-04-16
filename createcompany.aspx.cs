using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.Configuration;
using System.IO;
public partial class createcompany : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query;
    string destdir1, filename1, onlyfilename1, Onlyext1, orgfilename1, Destpath1;
    string sarr,t1,t2,t3,t4,t5;
    string cse, ece, eee, mech, civil,comptype;
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
        if (RadioButton1.Checked == true)
        {
            sarr = "Y";
        }
        else
        {
            sarr = "N";
        }


        //if (chkcse.Checked == true)
        //{
        //    cse = "BCA";
        //}
        //else
        //{
        //    cse = "no";
        //}

        //if (chkece.Checked == true)
        //{
        //    ece = "BSC";
        //}
        //else
        //{
        //    ece = "no";
        //}
        //if (chkeee.Checked == true)
        //{
        //    eee = "MCA";
        //}
        //else
        //{
        //    eee = "no";
        //}
        //if (chkmech.Checked == true)
        //{
        //    mech = "MSC";
        //}
        //else
        //{
        //    mech = "no";
        //}
       
        if (radiomnc.Checked == true)
        {
            comptype = "MNC";
        }
        else if (radiononmnc.Checked == true)
        {
            comptype = "Non MNC";
        }
        else if (radiobpo.Checked == true)
        {
            comptype = "BPO";
        }

        //if (FileUpload1.PostedFile.ContentLength < 2064)
        //{
        //    //LblError.Visible = true;
        //    //LblError.Text = "file is Too Large, This file is not allowed";
        //}
        //else
        //{
        //    destdir1 = Server.MapPath("./Attach");
        //    filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
        //    onlyfilename1 = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
        //    Onlyext1 = Path.GetExtension(FileUpload1.PostedFile.FileName);
        //    orgfilename1 = onlyfilename1 + Onlyext1;
        //    Destpath1 = Path.Combine(destdir1, orgfilename1);
        //    FileUpload1.PostedFile.SaveAs(Destpath1);
        //}
        t1 = txttime1.Text + dropt1.SelectedItem;
        t2 = txttime2.Text + dropt2.SelectedItem;
        t3 = txttime3.Text + dropt3.SelectedItem;
        t4 = txttime4.Text + dropt4.SelectedItem;
        t5 = txttime5.Text + dropt5.SelectedItem;

        data();
        query = "insert into compcreate(compname,profi,loc,domai,tenth,twelth,cgpa,arre,salpack,sarrear,r1,rt1,r2,rt2,r3,rt3,r4,rt4,r5,rt5,vdate,cse,ece,eee,mech,civil,yr,comptype,compurl)values('" + txtcompname.Text + "','" + txtprofile.Text + "','" + txtloc.Text + "','" + txtdomain.Text + "','" + txttenth.Text + "','" + txttwelth.Text + "','" + txtcgpa.Text + "','" + txtarrear.Text + "','" + txtsalary.Text + "','" + sarr + "','" + txtround1.Text + "','" + t1 + "','" + txtround2.Text + "','" + t2 + "','" + txtround3.Text + "','" + t3 + "','" + txtround4.Text + "','" + t4 + "','" + txtround5.Text + "','" + t5 + "','" + txtdate.Text + "','" + dropcourse.SelectedItem + "','" + dropcourse.SelectedItem + "','" + dropcourse.SelectedItem + "','" + dropcourse.SelectedItem + "','" + dropcourse.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + comptype + "','" + txtcompurl.Text + "')";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblack.Visible = true;
        txtarrear.Text = "";
        txtcgpa.Text = "";
        txtcompname.Text = "";
        txtdomain.Text = "";
        txtloc.Text = "";
        txtprofile.Text = "";
        txtsalary.Text = "";
        txttenth.Text = "";
        txttwelth.Text = "";
        txtround1.Text = "";
        txtround2.Text = "";
        txtround3.Text = "";
        txtround4.Text = "";
        txtround5.Text = "";
        txttime1.Text = "";
        txttime2.Text = "";
        txttime3.Text = "";
        txttime4.Text = "";
        txttime5.Text = "";
        txtdate.Text = "";
        txtcompurl.Text = "";

        //chkcivil.Checked = false;
        //chkcse.Checked = false;
        //chkece.Checked = false;
        //chkeee.Checked = false;
        //chkmech.Checked = false;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void txtsalary_TextChanged(object sender, EventArgs e)
    {

    }
}
