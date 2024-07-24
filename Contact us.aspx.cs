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
public partial class Contact_us : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("Insert into Contact(Name,Email,Contact,Address)values(@n,@e,@c,@a) ", cn);

        cmd.Parameters.AddWithValue("@n", TextBox1.Text);
        cmd.Parameters.AddWithValue("@e", TextBox2.Text);
        cmd.Parameters.AddWithValue("@c", TextBox3.Text);
        cmd.Parameters.AddWithValue("@a", TextBox4.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script>alert('Your Contact is Saved Successfull')</script>");
    }
}