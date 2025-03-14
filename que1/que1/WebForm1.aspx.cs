using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace que1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mitanshi\Documents\School.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            print();
        }
        public void print()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT [Id], [Name], [Age], [Grade] FROM [Students]", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [Students] ([Name], [Age], [Grade]) VALUES (@Name, @Age, @Grade)", con);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Age",TextBox2.Text);
                cmd.Parameters.AddWithValue("Grade", TextBox3.Text);

                con.Open();
                int r=cmd.ExecuteNonQuery();
                con.Close();

                if(r==1)
                {
                    Label1.Text = "Inserted...";
                    TextBox1.Text = " ";
                    TextBox2.Text = " ";
                    TextBox3.Text = " ";
                    print();
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE [Students] SET [Name] = @Name, [Age] = @Age, [Grade] = @Grade WHERE [Id] = @Id", con);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Age", TextBox2.Text);
                cmd.Parameters.AddWithValue("Grade", TextBox3.Text);
                cmd.Parameters.AddWithValue("Id", ViewState["Id"]);

                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();

                if (res == 1)
                {
                    Label1.Text = "Updated...";
                    TextBox1.Text = " ";
                    TextBox2.Text = " ";
                    TextBox3.Text = " ";
                    print();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            SqlCommand cmd = new SqlCommand("DELETE FROM [Students] WHERE [Id] = @Id", con);
            cmd.Parameters.AddWithValue("Id", btn.CommandArgument);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Deleted";
            con.Close();
            print();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT [Id], [Name], [Age], [Grade] FROM [Students] where Id="+btn.CommandArgument, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ViewState["Id"] = btn.CommandArgument;
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();
            Button1.Text = "Updated";
        }
    }
}