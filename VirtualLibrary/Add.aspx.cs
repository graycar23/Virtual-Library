using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace VirtualLibrary
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookButton_Click(object sender, EventArgs e)
        {
                string connStr = "server=localhost;user=root;database=library;port=3306;password='';";
                MySqlConnection conn = new MySqlConnection(connStr);

                try
                {
                    conn.Open();

                    string sql = "insert into book(title, author, publisher, year) values (@title, @author, @publish, @year);";

                    MySqlCommand cmd = new MySqlCommand(sql, conn);

                    cmd.Parameters.AddWithValue("@title", bookTitle.Text);
                    cmd.Parameters.AddWithValue("@author", author.Text);
                    cmd.Parameters.AddWithValue("@publish", publisher.Text);
                    cmd.Parameters.AddWithValue("@year", bookYear.Text);

                    cmd.ExecuteNonQuery();

                    added.Text = "Book Added";

                    bookTitle.Text = string.Empty;
                    author.Text = string.Empty;
                    publisher.Text = string.Empty;
                    bookYear.Text = string.Empty;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }

                conn.Close();
        }
    }
}