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
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "Insert into [Customer](FirstName, LastName, Email, Address, DateOfBirth,Country, Phone)values(@fName, @lName, @email,@address,@dob,@country,@phone)";
                SqlCommand cmd = new SqlCommand(query,con);
                cmd.Parameters.AddWithValue("@fName", fNameTxt.Text.Trim());
                cmd.Parameters.AddWithValue("@lName", lNameTxt.Text.Trim());
                cmd.Parameters.AddWithValue("@email", emailTxt.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", phoneTxt.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", dobTxt.Text.Trim());
                cmd.Parameters.AddWithValue("@address", addressTxt.Text.Trim());
                cmd.Parameters.AddWithValue("@country", countryList.SelectedValue);
                cmd.ExecuteNonQuery();
                GetCustomerID(con);
                CreateAccount();
                Response.Write("<script>alert('Registered Successfully');</script>");
                
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

        void CreateAccount() 
        {
            using (SqlConnection con = new SqlConnection(strcon)) 
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "Insert into [Account](Username,Password,CustomerID)values(@username,@password,@customerid)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("username", usernameTxt.Text.Trim());
                cmd.Parameters.AddWithValue("password", passwordTxt.Text.Trim());
                cmd.Parameters.AddWithValue("customerid", Session["CustomerID"].ToString());
                cmd.ExecuteNonQuery();
            }
        }

        bool CheckIfCustomerExists() 
        {
            using (SqlConnection con = new SqlConnection(strcon)) 
            {
                if (con.State == System.Data.ConnectionState.Closed) 
                {
                    con.Open();
                }
                string query = "Select * from [Account] where Username = '" + usernameTxt.Text.Trim() + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows) 
                {
                    return true;
                }

                return false;
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) 
            {
                if (CheckIfCustomerExists())
                {
                    Response.Write("<script>alert('Customer Already Exists With That Username');</script>");
                }
                else 
                {
                    CreateCustomer();
                }
            }
        }
    }
}