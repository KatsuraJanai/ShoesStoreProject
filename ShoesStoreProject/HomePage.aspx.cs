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
    public partial class _Default : Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                SqlConnection ConnectionString = new SqlConnection(strcon);
                if (ConnectionString.State == ConnectionState.Closed)
                {
                    ConnectionString.Open();

                }
                SqlCommand cmd = new SqlCommand("Select * from Customer where CustomerID=@CustomerID", ConnectionString);
                cmd.Parameters.AddWithValue("@CustomerID", Session["CustomerID"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {


                        Session["Customername"] = dr.GetValue(1).ToString();
                        LinkButton13.Visible = true;
                        LinkButton13.Text = "Welcome " + Session["Customername"].ToString();

                    }

                }
                else
                {
                    Session["Customername"] = "";
                }

            }
            catch (Exception)
            {

            }

        }   
    }
}