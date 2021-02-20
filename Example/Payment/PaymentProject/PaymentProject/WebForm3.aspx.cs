using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace PaymentProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string connStr = "server=localhost;user=root;database=classicmodels;port=3306;password='';";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                //I'm doing this for testing
                Response.Write("Connecting to MySQL");
                conn.Open();

                //write our SQL statement as a String
                string sql = "select customernumber as 'Customer Number', checknumber as 'Check Number', amount as 'Amount' from payments where customernumber = @cn;";

                //create a SQL command object
                MySqlCommand cmd = new MySqlCommand(sql, conn);

                //add values to our placeholders
                cmd.Parameters.AddWithValue("@cn", custNum.Text);

                //attach the output of our SQL command to the GridView
                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                            
                //reset text boxes           
                custNum.Text = string.Empty;



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            //close our database connection
            conn.Close();
        }
    }
}