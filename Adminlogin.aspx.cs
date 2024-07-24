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
public partial class Adminlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\jagta\OneDrive\Documents\Visual Studio 2010\WebSites\PizzaShop\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
   // int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "apurva" && TextBox2.Text == "appu123")
        {
            Response.Write("<script>alert('Your Login is Successfull')</script>");
            Response.Redirect("product.aspx");
        }
        else
        {
            Response.Write("<script>alert(' Sorry!! Your Login is not Successfull')</script>");
        }
    }
}