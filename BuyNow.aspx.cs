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
public partial class BuyNow : System.Web.UI.Page
{
    SqlConnection conection;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["conection"];
        conection = new SqlConnection(st);
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
        st = System.Configuration.ConfigurationManager.AppSettings["conection"];
        conection = new SqlConnection(st);
        int i = Convert.ToInt32(Request.QueryString["Rid"]);
        conection.Open();
        cmd = new SqlCommand("select purchase.Rid,purchase.Pid,Name,purchase.Quantity,purchase.Price from Purchase,Description where purchase.Pid=Product.Pid and purchase.Rid=@id and Date=@d", conection);
        cmd.Parameters.AddWithValue("@d", System.DateTime.Today.ToShortDateString());
        cmd.Parameters.AddWithValue("@id", i);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        cmd.ExecuteNonQuery();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        GridView1.FooterRow.Cells[2].Text = "Total";
        GridView1.FooterRow.Cells[4].Text = dt.Compute("Sum(Price)", "").ToString();
        conection.Close();
    }
    void displaydata1()
    {

        int i = Convert.ToInt32(Request.QueryString["Rid"]);
        conection.Open();
        cmd = new SqlCommand("select purchase.Rid,Name,Address,Contact from purchase,UserRegister where purchase.Rid=UserRegister.Rid and purchase.Rid=@id", conection);
        cmd.Parameters.AddWithValue("@id", i);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        cmd.ExecuteNonQuery();
        da.Fill(dt);
        Label1.Text = dt.Rows[0][0].ToString();
        Label2.Text = dt.Rows[0][1].ToString();
        Label3.Text = dt.Rows[0][2].ToString();
        Label4.Text = dt.Rows[0][3].ToString();

        conection.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // int Id = Convert.ToInt32(this.GridView1.SelectedRow.RowIndex);
        int Id = Convert.ToInt32(this.GridView1.SelectedRow.Cells[1].Text);
        conection.Open();
        cmd = new SqlCommand("delete from purchase where Pid=@i", conection);
        cmd.Parameters.AddWithValue("@i", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        cmd.ExecuteNonQuery();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        displaydata();
        conection.Open();
        cmd = new SqlCommand("update Product set quantity=quantity+1 where Pid=@i", conection);//product qty updated after product from order is cancelled
        cmd.Parameters.AddWithValue("@i", Id);
        cmd.ExecuteNonQuery();
        conection.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        conection.Open();
        cmd = new SqlCommand("insert into billinfo(Rid,Date,amount)values(@c,@d,@am)", conection);
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);
        cmd.Parameters.AddWithValue("@am", Convert.ToInt32(GridView1.FooterRow.Cells[4].Text));
        cmd.ExecuteNonQuery();
        conection.Close();
        Response.Write("<script>alert(' Thank You !!!!!!!! Your order is placed Successfully')</script>");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        conection.Open();
        cmd = new SqlCommand("delete from billinfo where Rid=@c and Date=@d", conection);
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);
        cmd.ExecuteNonQuery();
        conection.Close();
        conection.Open();
        cmd = new SqlCommand("delete from purchase where Rid=@c and Date=@d", conection);  //record deleted from purchase table
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);

        cmd.ExecuteNonQuery();
        conection.Close();
        Response.Write("<script>alert(' Thank You !!!!!!!! Your order is Cancelled Successfully')</script>");
        displaydata();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("BillReport.aspx?Rid=" + Label1.Text + "&Date=" + Label5.Text);
    }
}