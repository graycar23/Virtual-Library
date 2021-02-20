using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace VirtualLibrary
{
    public partial class authorSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            string connStr = "server=localhost;user=root;database=library;port=3306;password='';";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                conn.Open();

                string sql = "select title as 'Title', author as 'Author', publisher as 'Publisher', year as 'Year Published' from book where author = @author;";

                MySqlCommand cmd = new MySqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@author", author.Text);

                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                author.Text = string.Empty;
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}