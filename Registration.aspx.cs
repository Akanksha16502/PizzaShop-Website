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
public partial class Registration : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);

    }

   
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("Insert into UserRegister (Name,Email,Address,Contact,Password)values(@n,@e,@a,@c,@p) ", cn);

        cmd.Parameters.AddWithValue("@n", name.Text);
        cmd.Parameters.AddWithValue("@e", Email.Text);
        cmd.Parameters.AddWithValue("@a", Address.Text);
        cmd.Parameters.AddWithValue("@c", Convert.ToInt64(Contact.Text));
        cmd.Parameters.AddWithValue("@p", Password.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script language='javascript'>alert('Data Registered Successfully')</script>");
        
    }
}