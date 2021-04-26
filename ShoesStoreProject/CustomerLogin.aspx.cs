using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoesStoreProject
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection ConnectionString = new SqlConnection(strcon);
                if (ConnectionString.State == ConnectionState.Closed)
                {
                    ConnectionString.Open();

                }
                SqlCommand cmd = new SqlCommand("Select * from Account where Username='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "'", ConnectionString);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        Response.Write("<script>alert('login Successful');</script>");
                        Session["CustomerID"] = dr.GetValue(3).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid CustomerID/Password');</script>");
                }

            }
            catch (Exception)
            {

            }
        }
    }
}