using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication17
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SHC7QN6\SQLEXPRESS;Initial Catalog=SAGAR;Integrated Security=TrueData Source = DESKTOP - SHC7QN6\SQLEXPRESS; Initial Catalog = SAGAR; Integrated Security = True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Insert into CategoryDetails values('" + int.Parse(TextBox1.Text) + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" +DropDownList4.SelectedValue+ "') ", con);
            con.Open();
            comm.ExecuteNonQuery();
           con.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType() ,"script","alert('Sucessfully Record Inserted');",true);
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from CategoryDetails",con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource =dt;
            GridView1.DataBind();
            

            }

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("UPDATE CategoryDetails set ProductName ='"+DropDownList2.SelectedValue+ "',CategoryId ='" + DropDownList3.SelectedValue + "',CategoryName ='" + DropDownList4.SelectedValue + "' ", con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Record Updated');", true);
            LoadRecord();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Delete CategoryDetails Where ProductId = '" + int.Parse(TextBox1.Text )+"' ", con); 
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Record Deleted');", true);
            LoadRecord();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from CategoryDetails Where ProductId = '" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}