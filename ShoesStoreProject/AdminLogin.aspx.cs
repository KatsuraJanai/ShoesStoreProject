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
    public partial class AdminLogin : System.Web.UI.Page

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

                SqlCommand cmd = new SqlCommand("select * from Account where username='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", ConnectionString);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["admin"] = dr.GetValue(3).ToString();

                        if (Session["admin"].Equals("105"))
                        {

                            Response.Write("<script>alert('login Successful');</script>");
                            Session["username"] = dr.GetValue(1).ToString();
                            Session["CustomerID"] = dr.GetValue(3).ToString();
                            Session["role"] = "admin";
                        }
                        else
                        {

                            Response.Write("<script>alert('Invalid Admin UserName/Password');</script>");
                            Response.Redirect("AdminLogin.aspx");

                        }
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName/Password');</script>");
                }

            }

            catch (Exception)
            {

            }
        }
    }
}