using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoesStoreProject
{
    public partial class CustomerSignUp : System.Web.UI.Page 
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        void CreateCustomer() 
        {
            using (SqlConnection con = new SqlConnection(strcon)) 
            {
                string query = "INSERT into Customer(FirstName, LastName, Email, Address, Country, Phone) values(@fName, @lName, @email,@address, @country,@phone)";
                SqlCommand cmd = new SqlCommand(query,con);
                cmd.Parameters.AddWithValue("@fName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@lName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@country", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                GetCustomerID(con);
                //CreateAccount(con);
            }
        }

        void GetCustomerID(SqlConnection sqlConnection) 
        {
            string query = "SELECT IDENT_CURRENT('Customer')";
            SqlCommand cmd = new SqlCommand(query, sqlConnection);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows) 
            {
                while (dr.Read()) 
                {
                    Session["CustomerID"] = dr.GetValue(0).ToString(); 
                }
            }
        }

       /* void CreateAccount(SqlConnection sqlConnection) 
        {
            string query = "INSERT into Account(Username,Password,CustomerID) values(@username,@password,@customerid)";
            SqlCommand cmd = new SqlCommand(query, sqlConnection);
            cmd.Parameters.AddWithValue("username", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("password", TextBox8.Text.Trim());
            cmd.Parameters.AddWithValue("customerid", Session["CustomerID"].ToString());
            cmd.ExecuteNonQuery();

        }*/
    }
}