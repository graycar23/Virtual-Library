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
    public partial class consoleSearch : System.Web.UI.Page
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

                string sql = "select title as 'Title', developer as 'Developer', console as 'Console', year as 'Year Released' from game where console = @console;";

                MySqlCommand cmd = new MySqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@console", console.Text);

                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                console.Text = string.Empty;
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