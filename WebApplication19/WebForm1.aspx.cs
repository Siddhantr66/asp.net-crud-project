using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication19
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=LAPTOP-MVIU7AB2\SQLEXPRESS01;Initial Catalog=TEST;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetempList();
            }


        }

        private void GetempList()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {

                {
                    SqlCommand c = new SqlCommand("Listemp_sp", con);
                    SqlDataAdapter sd = new SqlDataAdapter(c);
                    DataTable dt = new DataTable();
                    sd.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                int empid = int.Parse(TextBox1.Text);
                string empname = TextBox2.Text, city = TextBox3.Text, contact = TextBox5.Text, sex = "";
                if (RadioButton1.Checked == true)
                {
                    sex = "Male";
                }
                else
                {
                    sex = "Female";
                }

                con.Open();
                SqlCommand c = new SqlCommand("exec Insertemp_sp '" + empid + "', '" + empname + "', '" + city + "', '" + sex + "', '" + contact + "'", con);
                c.ExecuteNonQuery();
                Label5.Text = "successfully inserted....";
                GetempList();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //update
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                int empid = int.Parse(TextBox1.Text);
                string empname = TextBox2.Text, city = TextBox3.Text, contact = TextBox5.Text, sex = "";
                if (RadioButton1.Checked == true)
                {
                    sex = "Male";
                }
                else
                {
                    sex = "Female";
                }

                con.Open();
                SqlCommand c = new SqlCommand("exec UpdateEmp'" + empid + "', '" + empname + "', '" + city + "', '" + sex + "', '" + contact + "'", con);
                c.ExecuteNonQuery();
                Label5.Text = "successfully updated....";
                GetempList();

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                int empid = int.Parse(TextBox1.Text);
                
                con.Open();
                SqlCommand c = new SqlCommand("exec Deleteemp'" + empid +  "'", con);
                c.ExecuteNonQuery();
                Label5.Text = "successfully deleted....";
                GetempList();

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //load
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                int empid = int.Parse(TextBox1.Text);

                con.Open();
                SqlCommand c = new SqlCommand("exec LOAD'" + empid + "'", con);
                SqlDataAdapter sd = new SqlDataAdapter(c);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                GridView1.DataSource = dt;

                GridView1.DataBind();

            }


        }
    }
}
