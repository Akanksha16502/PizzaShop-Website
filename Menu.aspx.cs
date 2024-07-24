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
public partial class Menu : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand command;
    protected void Page_Load(object sender, EventArgs e)
    {
        String st;
        st = System.Configuration.ConfigurationManager.AppSettings["conection"];

        cn = new SqlConnection(st);
        display();
    }
    void display()
    {
        Label2.Text = Request.QueryString["Name"];
        Label3.Text = Request.QueryString["Rid"];
        cn.Open();
        command = new SqlCommand("select * from Allproduct", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cn.Close();

    }
    protected void DataList1_ItemCommand(object sorce, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Assign")
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("singleproduct.aspx?Id=" + id);
        }
        if (e.CommandName == "Add")
        {
            cn.Open();
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            command = new SqlCommand("select Price,Quantity, fmaterial from Product where Pid=@p", cn);
            //command = new SqlCommand("select Price,Quantity,Description from Product where Pid=@p", conection);
            command.Parameters.AddWithValue("@p", id);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(dt);
            command.ExecuteNonQuery();
            cn.Close();
            int pri = Convert.ToInt32(dt.Rows[0][0].ToString());//retrieve selected product price for insert into purchase table
            int q = Convert.ToInt32(dt.Rows[0][1].ToString());//quantity column
            if (q > 0)
            {
                cn.Open();
                command = new SqlCommand("insert into purchase (Rid,Pid,Quantity,Price,Date) values(@C,@I,@Q,@PR,@D)", cn);
                command.Parameters.AddWithValue("@C", Convert.ToInt32(Label3.Text));
                command.Parameters.AddWithValue("@I", id);
                command.Parameters.AddWithValue("@Q", Convert.ToInt32("1"));
                command.Parameters.AddWithValue("@PR", pri);
                command.Parameters.AddWithValue("@D", System.DateTime.Today.ToShortDateString());
                command.ExecuteNonQuery();
                cn.Close();
                cn.Open();                                 //update quantity in product table
                command = new SqlCommand("update Product set Quantity=Quantity-1 where Pid=@I", cn);
                command.Parameters.AddWithValue("@I", id);
                command.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Your Product is Added successfuly in your cart')</script>");
                //Response.Redirect("singleproduct.aspx?Id=" + id + "&Name=" + Label3.Text);
                //Response.Redirect("singleproduct.aspx?Id=" + id);
            }
            else
            {
                Response.Write("<script>alert('Sorry this product is out of stock')</script>");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewcart.aspx?Rid=" + Label3.Text);
    }
}