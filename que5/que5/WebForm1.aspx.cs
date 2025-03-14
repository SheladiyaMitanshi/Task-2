using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;

namespace que5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mitanshi\Documents\Library.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlTextReader XmlReader = new XmlTextReader(Server.MapPath("Data.xml"));
            DataSet ds = new DataSet("Books");
            ds.ReadXml(XmlReader);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Label1.Text = "Data Readen in XMl File...!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Books] ([Title], [Author], [Price]) VALUES (@Title, @Author, @Price)", con);
            cmd.Parameters.AddWithValue("Title", TextBox1.Text);
            cmd.Parameters.AddWithValue("Author", TextBox2.Text);
            cmd.Parameters.AddWithValue("Price", TextBox3.Text);

            con.Open();
            int r = cmd.ExecuteNonQuery();
            con.Close();

            if (r == 1)
            {
                Label1.Text = "Inserted...";
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
            }

            SqlDataAdapter adpt = new SqlDataAdapter("SELECT [BookId], [Title], [Author], [Price] FROM [Books]", con);
            DataSet ds = new DataSet("Books");
            adpt.Fill(ds);
            ds.WriteXml(Server.MapPath("Data.xml"));
            Label1.Text = "Data Written in XML file...!";
        }
    }
}