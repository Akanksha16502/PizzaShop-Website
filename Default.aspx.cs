using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class _Default : System.Web.UI.Page
{
     SqlConnection cn;
    SqlCommand cmd;
    ReportDocument rprt = new ReportDocument();
    protected void Page_Load1(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        cn.Open();
        PurchaseDataSet ds = new PurchaseDataSet();
        SqlDataAdapter ad = new SqlDataAdapter("select * from Billinfo,UserRegister,purchase", cn);
        ad.Fill(ds, "Billinfo,UserRegister,purchase");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
        CrystalReportViewer1.DataBind();
        cn.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        cn.Open();
        custbillDataSet ds = new custbillDataSet();
        cmd = new SqlCommand("select * from View1", cn);

        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        ad.Fill(ds, "View1");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
        CrystalReportViewer1.DataBind();
        cn.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        custbillDataSet ds = new custbillDataSet();
        cmd = new SqlCommand("select * from View1 where Rid=@c", cn);
        cmd.Parameters.AddWithValue("@c", System.Convert.ToInt32(TextBox1.Text));
        // SqlDataAdapter ad = new SqlDataAdapter("select * from View1 where Rid=@c", cn);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        ad.Fill(ds, "View1");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
        CrystalReportViewer1.DataBind();
        cn.Close();
    }
}