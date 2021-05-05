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
    public partial class ShoeInventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                if (CheckIfProductIncart('1'))
                {
                    Response.Write("<script>alert('This Item Is Already In Your Cart!');</script>");
                }
                else
                {
                    CreateCart();
                    AddToCart(DropDownList4.Text.Trim(), '1');
                }

            }
        }

        bool CheckIfProductIncart(object ProductID)
        {
            using (SqlConnection ConnectionString = new SqlConnection(strcon))
            {
                if (ConnectionString.State == System.Data.ConnectionState.Closed)
                {
                    ConnectionString.Open();
                }
                string query = "Select * from [CartItem] where ProductID = @ProductID and CustomerID = @CustomerID";
                SqlCommand cmd = new SqlCommand(query, ConnectionString);
                cmd.Parameters.AddWithValue("@ProductID", ProductID);
                cmd.Parameters.AddWithValue("@CustomerID", Session["CustomerID"]);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    return true;
                }

                return false;
            }
        }

        //Add to cart function 
        void AddToCart (object Quantity1, object ProductID)
        {
            
            try
            {
                System.Data.SqlClient.SqlConnection ConnectionString = new SqlConnection(strcon);
                if (ConnectionString.State == ConnectionState.Closed)
                {
                    ConnectionString.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO CartItem(ProductID, Quantity, CartID, CustomerID) values(@ProductID, @Quantity, @CartID, @CustomerID)", ConnectionString);


               cmd.Parameters.AddWithValue("@Quantity", Quantity1); 
               cmd.Parameters.AddWithValue("@ProductID", ProductID);                
               cmd.Parameters.AddWithValue("@CustomerID", Session["CustomerID"]);
                cmd.Parameters.AddWithValue("@CartID", Session["CartID"]);



                cmd.ExecuteNonQuery();
                
                ConnectionString.Close();
                Response.Write("<script>alert('Item added Successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void GetCartID(SqlConnection sqlConnection)
        {
            string query = "SELECT IDENT_CURRENT('Cart')";
            SqlCommand cmd = new SqlCommand(query, sqlConnection);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["CartID"] = dr.GetValue(0).ToString();
                }
            }
        }

        void CreateCart()
        {
            using (SqlConnection ConnectionString = new SqlConnection(strcon))
            {
                if (ConnectionString.State == System.Data.ConnectionState.Closed)
                {
                    ConnectionString.Open();
                }
                string query = "Insert into [Cart](AccountID, DateCreated)values(@AccountID, @DateCreated)";
                SqlCommand cmd = new SqlCommand(query, ConnectionString);
                cmd.Parameters.AddWithValue("AccountID", Session["AccountID"].ToString());
                cmd.Parameters.AddWithValue("DateCreated", DateTime.Now); 
                
                cmd.ExecuteNonQuery();
                GetCartID(ConnectionString);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (CheckIfProductIncart('2'))
                {
                    Response.Write("<script>alert('This Item Is Already In Your Cart!');</script>");
                }
                else
                {
                    CreateCart();
                    AddToCart(DropDownList1.Text.Trim(), '2');
                }

            }
        
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (CheckIfProductIncart('3'))
                {
                    Response.Write("<script>alert('This Item Is Already In Your Cart!');</script>");
                }
                else
                {
                    CreateCart();
                    AddToCart(DropDownList2.Text.Trim(), '3');
                }

            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (CheckIfProductIncart('4'))
                {
                    Response.Write("<script>alert('This Item Is Already In Your Cart!');</script>");
                }
                else
                {
                    CreateCart();
                    AddToCart(DropDownList3.Text.Trim(), '4');
                }

            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (CheckIfProductIncart('5'))
                {
                    Response.Write("<script>alert('This Item Is Already In Your Cart!');</script>");
                }
                else
                {
                    CreateCart();
                    AddToCart(DropDownList5.Text.Trim(), '5');
                }

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (CheckIfProductIncart('6'))
                {
                    Response.Write("<script>alert('This Item Is Already In Your Cart!');</script>");
                }
                else
                {
                    CreateCart();
                    AddToCart(DropDownList6.Text.Trim(), '6');
                }

            }
        }
    }
}