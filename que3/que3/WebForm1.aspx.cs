using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace que3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mitanshi\Documents\company.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            print();
        }

        public void print()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT [EmployeeId], [EmpName], [DateOfBirth], [Department], [ProfileImage] FROM [Employees]", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Employees] ([EmpName], [DateOfBirth], [Department], [ProfileImage]) VALUES (@EmpName, @DateOfBirth, @Department, @ProfileImage)", con);
            cmd.Parameters.AddWithValue("EmpName", TextBox1.Text);
            cmd.Parameters.AddWithValue("DateOfBirth", TextBox2.Text);
            cmd.Parameters.AddWithValue("Department", TextBox3.Text);
            String filepath = FileUpload1.FileName;
            if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs("D:/"+filepath);
            }
            cmd.Parameters.AddWithValue("ProfileImage", filepath);
            
            con.Open();
            int r = cmd.ExecuteNonQuery();
            con.Close();

            if (r == 1)
            {
                Label1.Text = "Inserted...";
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                print();
            }
        }
    }
}