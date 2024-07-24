using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class vieworder : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        displaydata();
    }
    void displaydata()
    {


        cn.Open();
        cmd = new SqlCommand("select purchase.Rid,UserRegister.Name,Address,Contact,Email,purchase.Pid,Date,purchase.Quantity,purchase.Price from purchase,Product,UserRegister where purchase.Pid=Product.Pid and purchase.Rid=UserRegister.Rid", cn);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        cmd.ExecuteNonQuery();
        GridView2.DataSource = dt;
        GridView2.DataBind();
        cn.Close();
    }
}