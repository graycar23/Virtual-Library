using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace VirtualLibrary
{
    public partial class AddMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            string connStr = "server=localhost;user=root;database=library;port=3306;password='';";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                conn.Open();

                string sql = "insert into movie(title, director, producer, year, medium) values (@title, @director, @producer, @year, @medium);";

                MySqlCommand cmd = new MySqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@title", movieTitle.Text);
                cmd.Parameters.AddWithValue("@director", director.Text);
                cmd.Parameters.AddWithValue("@producer", company.Text);
                cmd.Parameters.AddWithValue("@year", movieYear.Text);
                cmd.Parameters.AddWithValue("@medium", medium.Text);

                cmd.ExecuteNonQuery();

                added.Text = "Movie Added";

                movieTitle.Text = string.Empty;
                director.Text = string.Empty;
                company.Text = string.Empty;
                movieYear.Text = string.Empty;
                medium.Text = string.Empty;
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            conn.Close();
        }
    }
}