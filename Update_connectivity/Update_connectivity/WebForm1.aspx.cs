using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Update_connectivity
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mitanshi\Documents\School.mdf;Integrated Security=True;Connect Timeout=30");
        String Gender="", Hobby="", City="";
        protected void Page_Load(object sender, EventArgs e)
        {
            print();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT [Id], [Name], [Gmail], [Gender], [Hobby], [City] FROM [stud] where Id="+btn.CommandArgument, con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            RadioButtonList1.Text = dt.Rows[0][3].ToString();
            ViewState["Id"] = btn.CommandArgument;
            Hobby = dt.Rows[0][4].ToString();
            string[] selectedhobby = Hobby.Split(',');
            foreach (ListItem item in CheckBoxList1.Items)
            {
                item.Selected = selectedhobby.Contains(item.Value);
            }
            DropDownList1.Text = dt.Rows[0][5].ToString();
            Button1.Text = "Updated";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            SqlCommand cmd = new SqlCommand("DELETE FROM [stud] WHERE [Id] = @Id", con);
            cmd.Parameters.AddWithValue("Id", btn.CommandArgument);
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Deleted";
            con.Close();
        }

        public void print()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT [Id], [Name], [Gmail], [Gender], [Hobby], [City] FROM [stud]", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [stud] ([Name], [Gmail], [Gender], [Hobby], [City]) VALUES (@Name, @Gmail, @Gender, @Hobby, @City)", con);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Gmail", TextBox2.Text);
                if (RadioButtonList1.SelectedItem.Selected)
                {
                    Gender = RadioButtonList1.SelectedValue;
                }
                cmd.Parameters.AddWithValue("Gender", Gender);
                List<String> selectedhobby = new List<string>();
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        selectedhobby.Add(item.Value);
                    }
                }
                Hobby = string.Join(",", selectedhobby);
                cmd.Parameters.AddWithValue("Hobby", Hobby);
                if (DropDownList1.SelectedItem.Selected)
                {
                    City = DropDownList1.SelectedValue;
                }
                cmd.Parameters.AddWithValue("City", City);

                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();

                if (res == 1)
                {
                    Label1.Text = "Inserted...";
                    TextBox1.Text = " ";
                    TextBox2.Text = " ";
                    RadioButtonList1.ClearSelection();
                    CheckBoxList1.ClearSelection();
                    DropDownList1.ClearSelection();
                    print();
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE [stud] SET [Name] = @Name, [Gmail] = @Gmail, [Gender] = @Gender, [Hobby] = @Hobby, [City] = @City WHERE [Id] = @Id", con);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Gmail", TextBox2.Text);
                if (RadioButtonList1.SelectedItem.Selected)
                {
                    Gender = RadioButtonList1.SelectedValue;
                }
                cmd.Parameters.AddWithValue("Gender", Gender);
                cmd.Parameters.AddWithValue("Id", ViewState["Id"]);
                List<String> selectedhobby = new List<string>();
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        selectedhobby.Add(item.Value);
                    }
                }
                Hobby = string.Join(",", selectedhobby);
                cmd.Parameters.AddWithValue("Hobby", Hobby);
                if (DropDownList1.SelectedItem.Selected)
                {
                    City = DropDownList1.SelectedValue;
                }
                cmd.Parameters.AddWithValue("City", City);

                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();

                if (res == 1)
                {
                    Label1.Text = "Updated...";
                    TextBox1.Text = " ";
                    TextBox2.Text = " ";
                    RadioButtonList1.ClearSelection();
                    CheckBoxList1.ClearSelection();
                    DropDownList1.ClearSelection();
                    print();
                }
            }
        }
    }
}