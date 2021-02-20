using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace PaymentProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            string connStr = "server=localhost;user=root;database=classicmodels;port=3306;password='';";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                //I'm doing this for testing
                Response.Write("Connecting to MySQL");
                conn.Open();

                //write our SQL statement as a String
                string sql = "insert into payments (customerNumber, checknumber, paymentdate, amount) values (@cn, @ckn, CURDATE(), @am);";

                //create a SQL command object
                MySqlCommand cmd = new MySqlCommand(sql, conn);

                //add values to our placeholders
                cmd.Parameters.AddWithValue("@cn", custNum.Text);
                cmd.Parameters.AddWithValue("@ckn", ckNum.Text);
                cmd.Parameters.AddWithValue("@am", amt.Text);

                //execute our sql command
                cmd.ExecuteNonQuery();

                Response.Write(" Payment added...");

                //reset text boxes
                ckNum.Text = string.Empty;
                custNum.Text = string.Empty;
                amt.Text = string.Empty;


            } catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }

            //close our database connection
            conn.Close();

        }
    }
}