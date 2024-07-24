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
public partial class viewcart : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        Label5.Text = System.DateTime.Today.ToShortDateString();
        if (!IsPostBack)
        {
            displaydata();
            displaydata1();
        }
    }
    void displaydata()
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        int i = Convert.ToInt32(Request.QueryString["Rid"]);
        cn.Open();
        cmd = new SqlCommand("select purchase.Rid,purchase.Pid,Pname,purchase.Quantity,purchase.Price from Purchase,Product where purchase.Pid=Product.Pid and purchase.Rid=@id and Date=@d", cn);
        cmd.Parameters.AddWithValue("@d", System.DateTime.Today.ToShortDateString());
        cmd.Parameters.AddWithValue("@id", i);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        cmd.ExecuteNonQuery();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        GridView1.FooterRow.Cells[2].Text = "Total";
        GridView1.FooterRow.Cells[4].Text = dt.Compute("Sum(price)", "").ToString();
        cn.Close();
    }
    void displaydata1()
    {

        int i = Convert.ToInt32(Request.QueryString["Rid"]);
        cn.Open();
        cmd = new SqlCommand("select purchase.Rid,UserRegister.Name,Address,Contact from purchase,UserRegister where purchase.Rid=UserRegister.Rid and purchase.Rid=@id", cn);
        cmd.Parameters.AddWithValue("@id", i);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        cmd.ExecuteNonQuery();
        da.Fill(dt);
        Label1.Text = dt.Rows[0][0].ToString();
        Label2.Text = dt.Rows[0][1].ToString();
        Label3.Text = dt.Rows[0][2].ToString();
        Label4.Text = dt.Rows[0][3].ToString();

        cn.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // int Id = Convert.ToInt32(this.GridView1.SelectedRow.RowIndex);
        int Id = Convert.ToInt32(this.GridView1.SelectedRow.Cells[1].Text);
        cn.Open();
        cmd = new SqlCommand("delete from purchase where Pid=@i", cn);
        cmd.Parameters.AddWithValue("@i", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        cmd.ExecuteNonQuery();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        displaydata();
        cn.Open();
        cmd = new SqlCommand("update Product set Quantity=Quantity+1 where Pid=@i", cn);//product qty updated after product from order is cancelled
        cmd.Parameters.AddWithValue("@i", Id);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into billinfo(Rid,Date,Amount)values(@c,@d,@am)", cn);
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);
        cmd.Parameters.AddWithValue("@am", Convert.ToInt32(GridView1.FooterRow.Cells[4].Text));
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script>alert(' Thank You !!!!!!!! Your order is placed Successfully')</script>");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from billinfo where Rid=@c and Date=@d", cn);
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("delete from purchase where Rid=@c and Date=@d", cn);  //record deleted from purchase table
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);

        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script>alert(' Thank You !!!!!!!! Your order is Cancelled Successfully')</script>");
        displaydata();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?Rid=" + Label1.Text + "&cDate=" + Label5.Text);
    }
}