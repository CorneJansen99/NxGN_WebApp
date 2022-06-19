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
    public partial class AddPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public SqlConnection con;
        public SqlDataAdapter adaptr;
        public SqlCommand commm;
        public string constrctr = @"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFileName=|DataDirectory|\Moviesdb.mdf;Integrated Security=True";
        public DataSet ds;

        public void AddMovieData()                                                          //Method to add/save new movie data and redirect to Home Page
        {
            String MovieName = NameTb.Text;
            String Category = CategoryTb.Text;
            String Rating = RatingTb.Text;

            string insert_query = "INSERT INTO MovieTable VALUES(@MovieName, @Category, @Rating)";
            con = new SqlConnection(constrctr);
            con.Open();
            commm = new SqlCommand(insert_query, con);
            commm.Parameters.AddWithValue("@MovieName", MovieName);
            commm.Parameters.AddWithValue("@Category", Category);
            commm.Parameters.AddWithValue("@Rating", Rating);

            commm.ExecuteNonQuery();
            con.Close();
            //Response.Write("<script>alert('Movie Sucessfully Added!')</script>");
            NameTb.Text = "";
            CategoryTb.Text = "";
            RatingTb.Text = "";
            Response.Redirect("Home.aspx");
        }
        

        protected void SaveBtn_Click(object sender, EventArgs e)                            //Values need to be entered into textboxes before data can be added to the Database
        {
            if (NameTb.Text == "")
            {
                Response.Write("<script>alert('Please Add Movie Name!')</script>");
                return;
            }
            else if (CategoryTb.Text == "")
            {
                Response.Write("<script>alert('Please Add Category!')</script>");
                return;
            } else if (RatingTb.Text == "")
            {
                Response.Write("<script>alert('Please Add Rating!')</script>");
                return;
            }

            else
            {
                AddMovieData();
            }
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            NameTb.Text = "";                                                               //Cancel, clear textboxes and redirect to Home Page
            CategoryTb.Text = "";
            RatingTb.Text = "";
            Response.Redirect("Home.aspx");
        }
    }
}