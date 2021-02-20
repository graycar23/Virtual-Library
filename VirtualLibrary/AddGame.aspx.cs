using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace VirtualLibrary
{
    public partial class AddGame : System.Web.UI.Page
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

                string sql = "insert into game(title, developer, year, console) values (@title, @developer, @year, @console);";

                MySqlCommand cmd = new MySqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@title", gameTitle.Text);
                cmd.Parameters.AddWithValue("@developer", developer.Text);
                cmd.Parameters.AddWithValue("@year", gameYear.Text);
                cmd.Parameters.AddWithValue("@console", console.Text);

                cmd.ExecuteNonQuery();

                added.Text = "Game Added";

                gameTitle.Text = string.Empty;
                developer.Text = string.Empty;
                gameYear.Text = string.Empty;
                console.Text = string.Empty;
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            conn.Close();
        }
    }
}