using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.OleDb;
using System.IO;
public partial class uploadquespaper : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string query, course;
    string bsc, bca, msc, mca;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new OleDbConnection(connstring);
        con.Open();
    }string destdir1, filename1, onlyfilename1, Onlyext1, orgfilename1, Destpath1, dpath1;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength != 0)
        {
            destdir1 = Server.MapPath("./Attach");
            filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
            onlyfilename1 = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
            Onlyext1 = Path.GetExtension(FileUpload1.PostedFile.FileName);
            orgfilename1 = onlyfilename1 + Onlyext1;
            Destpath1 = Path.Combine(destdir1, orgfilename1);
            FileUpload1.PostedFile.SaveAs(Destpath1);
        }
        data();
        query = "insert into quesdetails(compname,testtype,fname,fpath,uplodate,uplotime,course)values('" + dropcompname.SelectedItem + "','" + dropcomptype.SelectedItem + "','" + orgfilename1 + "','" + Destpath1 + "','" + System.DateTime.Today.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "','" + dropcourse.SelectedItem + "')";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblack.Visible = true;
    }
    protected void dropcompname_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        data();
        query = "select compname,profi,comptype,cse,yr from compcreate where compname='" + dropcompname.SelectedItem + "'";
        cmd = new OleDbCommand(query, con);
        OleDbDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblcompname.Text = rd[0].ToString();
            lblprofile.Text = rd[1].ToString();
            lblcomptype.Text = rd[2].ToString();
           
            lblcourse.Text = rd[3].ToString();
            lblyear.Text = rd[4].ToString();
        }
        rd.Close();
        con.Close();

    }
}