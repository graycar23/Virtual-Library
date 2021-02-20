using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace PaymentProject
{
    public partial class WebForm2 : System.Web.UI.Page
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
                

                //execute our SELECT sql command
                cmd.Prepare();
                MySqlDataReader reader = cmd.ExecuteReader();

                //setup HTML table to show our reader data
                Response.Write("<table><tr><th>Customer Number</th><th>Check Number</th><th>Amount</th></tr>");

                while (reader.Read())
                {
                    Response.Write("<tr><td>" + reader[0].ToString()+"</td>");
                    Response.Write("<td>" + reader[1].ToString() + "</td>");
                    Response.Write("<td>" + reader[2].ToString() + "</td></tr>");
                }
                ;
                Response.Write("</table>");
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