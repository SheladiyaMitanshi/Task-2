using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace que4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mitanshi\Documents\Shop.mdf;Integrated Security=True;Connect Timeout=30");
        String City;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Customers] ([CusttName], [Email], [Address], [City]) VALUES (@CusttName, @Email, @Address, @City)", con);
            cmd.Parameters.AddWithValue("CusttName", TextBox1.Text);
            cmd.Parameters.AddWithValue("Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("Address", TextBox3.Text);
            if (DropDownList1.SelectedItem.Selected)
            {
                City = DropDownList1.SelectedValue;
            }
            cmd.Parameters.AddWithValue("City", City);
            Session["CusttName"] = TextBox1.Text;
            con.Open();
            int r = cmd.ExecuteNonQuery();
            con.Close();

            if (r == 1)
            {
                Label1.Text = "Inserted...";
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                DropDownList1.ClearSelection();
            }
            
            Response.Redirect("WebForm3.aspx");
        }
    }
}