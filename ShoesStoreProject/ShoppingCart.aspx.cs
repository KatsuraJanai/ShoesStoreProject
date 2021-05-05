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
    public partial class ShoppingCart : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfCartNotEmpty())
            {
                try
                {
                    SqlConnection ConnectionString = new SqlConnection(strcon);
                    if (ConnectionString.State == ConnectionState.Closed)
                    {
                        ConnectionString.Open();

                    }
                    SqlCommand cmd = new SqlCommand("Select * from CartItem where CustomerID=@CustomerID", ConnectionString);
                    cmd.Parameters.AddWithValue("@CustomerID", Session["CustomerID"]);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {

                            Session["CartItemID"] = dr.GetValue(0).ToString();
                            Session["ProductID"] = dr.GetValue(1).ToString();
                            Session["Quantity"] = dr.GetValue(3).ToString();
                            Response.Redirect("FinalPayment.aspx");
                        }
                        
                    }
                    

                }
                catch (Exception)
                {

                }

                

            }
            else
            {
                Response.Write("<script>alert('Your cart is empty! Please add an item');</script>");
            }


        }

        bool checkIfCartNotEmpty()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from CartItem where CustomerID = @CustomerID", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@CustomerID", Session["CustomerID"]);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }


    }
}