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
public partial class Userlogin : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);

    }
    protected void B1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select Rid,Name,Password from UserRegister where Name=@U and Password=@P", cn);

        cmd.Parameters.AddWithValue("@U", username.Text);
        cmd.Parameters.AddWithValue("@P", password.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        cmd.ExecuteNonQuery();
        sda.Fill(dt);
        cn.Close();


        if (dt.Rows.Count > 0)
        {
            int id = Convert.ToInt32(dt.Rows[0][0].ToString());
            String custname = dt.Rows[0][1].ToString();
            Response.Write("<script>alert('Congrats your login is successfuly')</script>");
            Response.Redirect("CustomerMenu.aspx?Name=" + custname + "&Rid=" + id);//refer Add To cart page

        }
        else
        {
            Response.Write("<script>alert('Your username and Password is incorrect')</script>");
            username.Text = "";
            password.Text = "";
        }
    }


}