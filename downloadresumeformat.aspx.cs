using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.OleDb;
using System.IO;
public partial class downloadresumeformat : System.Web.UI.Page
{ 
    OleDbConnection con;
    OleDbCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = (@"~/Resume/resume1.docx");
        HyperLink2.NavigateUrl = (@"~/Resume/resume2.doc");
        HyperLink3.NavigateUrl = (@"~/Resume/resume3.docx");
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new OleDbConnection(connstring);
        con.Open();
    }
    string destdir1, filename1, onlyfilename1, Onlyext1, orgfilename1, Destpath1, dpath1;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength != 0)
        {
            destdir1 = Server.MapPath("./uploads");
            filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
            onlyfilename1 = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
            Onlyext1 = Path.GetExtension(FileUpload1.PostedFile.FileName);
            orgfilename1 = onlyfilename1 + Onlyext1;
            Destpath1 = Path.Combine(destdir1, orgfilename1);
            FileUpload1.PostedFile.SaveAs(Destpath1);
        }
        data();
        query = "insert into resumes(studregno,fname,fpath,uplodate,uplotime)values('" + Session["stu"].ToString() + "','" + orgfilename1 + "','" + Destpath1 + "','" + System.DateTime.Today.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "')";
        cmd = new OleDbCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblack.Visible = true;
    }
}