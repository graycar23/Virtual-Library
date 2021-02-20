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
    public partial class searchMenu : System.Web.UI.Page
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

                string sql1 = "select title as 'Title', author as 'Author', publisher as 'Publisher', year as 'Year Published' from book;";

                MySqlCommand cmd1 = new MySqlCommand(sql1, conn);
                MySqlDataAdapter adp1 = new MySqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                adp1.Fill(ds1);
                GridView1.DataSource = ds1;
                GridView1.DataBind();
                books.Text = "Books:";

                string sql2 = "select title as 'Title', director as 'Director', producer as 'Producer', year as 'Year released', medium as 'Medium' from movie;";

                MySqlCommand cmd2 = new MySqlCommand(sql2, conn);
                MySqlDataAdapter adp2 = new MySqlDataAdapter(cmd2);
                DataSet ds2 = new DataSet();
                adp2.Fill(ds2);
                GridView2.DataSource = ds2;
                GridView2.DataBind();
                movies.Text = "Movies:";

                string sql3 = "select title as 'Title', developer as 'Developer', console as 'Console', year as 'Year Released' from game;";

                MySqlCommand cmd3 = new MySqlCommand(sql3, conn);
                MySqlDataAdapter adp3 = new MySqlDataAdapter(cmd3);
                DataSet ds3 = new DataSet();
                adp3.Fill(ds3);
                GridView3.DataSource = ds3;
                GridView3.DataBind();
                games.Text = "Games:";
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

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}