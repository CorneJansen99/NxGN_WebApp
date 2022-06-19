using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace NxGN_WebApp
{
    public partial class Home : System.Web.UI.Page
    {

        public SqlConnection con;
        public SqlDataAdapter adaptr;
        public SqlCommand commm;
        public string constrctr = @"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFileName=|DataDirectory|\Moviesdb.mdf;Integrated Security=True";
        public DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayDb();
        }

        public void DisplayDb()                                                             //Method to connect and display databse in gridview 
        {
            con = new SqlConnection(constrctr);
            string solu1 = "Select * FROM MovieTable";
            con.Open();
            commm = new SqlCommand(solu1, con);

            ds = new DataSet();
            adaptr = new SqlDataAdapter();
            adaptr.SelectCommand = commm;
            adaptr.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditPage.aspx");                                             //Navigate to EditPage             
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPage.aspx");                                              //Navigate to AddPage
        }

        protected void SearchBtn_Click(object sender, EventArgs e)                          //Search and filter movies based on Catagory
        {
            con = new SqlConnection(constrctr);
            string solut = "Select * FROM MovieTable where Category = '" + searchTb.Text + "'";
            con.Open();
            commm = new SqlCommand(solut, con);

            ds = new DataSet();
            adaptr = new SqlDataAdapter();
            adaptr.SelectCommand = commm;
            adaptr.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)                          //Method to remove Movie from database, MovieName must be entered into textbox
        {
            string delete_query = "DELETE FROM MovieTable WHERE MovieName = '" + DeleteTb.Text + "'";
            con = new SqlConnection(constrctr);
            con.Open();
            commm = new SqlCommand(delete_query, con);
            commm.ExecuteNonQuery();
            con.Close();

            //Response.Write("<script>alert('Movie Sucessfully Removed!')</script>");
            DeleteTb.Text = "";
            DisplayDb();
        }

        protected void DisplayBtn_Click(object sender, EventArgs e)
        {
            DisplayDb();                                                                    //Display entire Database
        }
    }
}