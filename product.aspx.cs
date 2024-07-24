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
public partial class product : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        display();
    }
    void display()
    {
        cn.Open();
        cmd = new SqlCommand("select*from Product", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/photo/+Filename"));
            String f1 = "~/photo/" + filename;
            cn.Open();
            cmd = new SqlCommand("insert into Product(Pname,Price,Image,Quantity,Description)values(@n,@p,@i,@q,@d)", cn);
            cmd.Parameters.AddWithValue("@n", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p", Convert.ToInt32(TextBox2.Text));
            cmd.Parameters.AddWithValue("@i", f1.ToString());
            cmd.Parameters.AddWithValue("@q", Convert.ToInt32(TextBox3.Text));
            cmd.Parameters.AddWithValue("@d", TextBox4.Text);
           // cmd.Parameters.AddWithValue("@pid", Convert.ToInt32(Label7.Text));//
            cmd.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script>alert('product added Successfully')</script>");
            display();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/photo/+Filename"));
            String f1 = "~/photo/" + filename;
            cn.Open();
            cmd = new SqlCommand("update Product set Pname=@n,Price=@p,Image=@i,Quantity=@q,Description=@d where Pid=@Id", cn);
            cmd.Parameters.AddWithValue("@n", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p", Convert.ToInt32(TextBox2.Text));
            cmd.Parameters.AddWithValue("@i", f1.ToString());
            cmd.Parameters.AddWithValue("@q", Convert.ToInt32(TextBox3.Text));
            cmd.Parameters.AddWithValue("@d", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Label7.Text));
            cmd.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script>alert('product updated Successfully')</script>");
            display();
        }
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label7.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from Product where Pid=@Id", cn);
        cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Label7.Text));
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script>alert('product Deleted Successfully')</script>");
        display();
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

}