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

    public partial class WebForm1 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("SELECT SUM(c.Quantity * p.Price) AS [Grand Total $] FROM CartItem AS c INNER JOIN Product AS p ON p.ProductID = c.ProductID WHERE (c.CustomerID = @CustomerID)", ConnectionString);
                cmd.Parameters.AddWithValue("@CustomerID", Session["CustomerID"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {


                        Session["Total"] = dr.GetValue(0).ToString();
                        
                        TextBox5.Text = " " + Session["Total"].ToString();

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

        public Boolean CheckIfCardExists()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "Select * from [Card] where CardNumber = @CardNumber AND CVV = @CVV AND ExpiryDate = @ExpiryDate AND AmountOnCard > @Amount";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CardNumber", TextBox2.Text);
                cmd.Parameters.AddWithValue("@CVV", TextBox3.Text);
                cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Amount", TextBox5.Text);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (CheckIfCardExists())
                {

                    ApprovePayment();
                    CreateOrder();
                    CreateNumber();
                    TrackingCreateNumber();
                    ClearCart();
                    clearForm();


                }
                else
                {
                    Response.Write("<script>alert('Card Decline! ');</script>");
                }
            }

        }

        void ApprovePayment ()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE Card SET  AmountOnCard=(AmountOnCard-@cost)  WHERE CardNumber=@CardNumber", con);

            cmd.Parameters.AddWithValue("@CardNumber", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Cost", TextBox5.Text.Trim());



            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Payment Approved! Your Order is Being Prepared for Shipment (View Order Page for Tracking Number)');</script>");
            

        }

        void CreateOrder ()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "Insert into [Order](OrderDate, TotalCost, Status, Address, ZipCode, Country, ShippingFee, ShippingMethod, City)values(@OrderDate, @TotalCost, 'New', @Address, @ZipCode, @Country, '0.00', 'Air', @City)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@OrderDate", DateTime.Now);  
                cmd.Parameters.AddWithValue("@TotalCost", Session["Total"].ToString());
                cmd.Parameters.AddWithValue("@Address", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@ZipCode", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Country", countryList.SelectedValue);
                cmd.Parameters.AddWithValue("@City", TextBox9.Text.Trim());
                cmd.ExecuteNonQuery();
                GetOrderID(con);
                getPrice();
                CreateOrderDetail();
                Response.Write("<script>alert('Registered Successfully');</script>");

            }

        }

        void GetOrderID(SqlConnection sqlConnection)
        {
            string query = "SELECT IDENT_CURRENT('Order')";
            SqlCommand cmd = new SqlCommand(query, sqlConnection);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["OrderID"] = dr.GetValue(0).ToString();
                }
            }
        }

        void CreateOrderDetail()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "Insert into [OrderDetails](OrderID,ProductID,Username, OrderQuantity, UnitPrice, LineTotal)values(@OrderID, @ProductID, @Username, @OrderQuantity,@UnitPrice, @LineTotal)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("OrderID", Session["OrderID"].ToString()); 
                cmd.Parameters.AddWithValue("ProductID", Session["ProductID"].ToString());
                cmd.Parameters.AddWithValue("Username", Session["Username"].ToString());
                cmd.Parameters.AddWithValue("OrderQuantity", Session["Quantity"].ToString());
                cmd.Parameters.AddWithValue("UnitPrice", Session["Price"].ToString());
                cmd.Parameters.AddWithValue("LineTotal", Session["Total"].ToString());
                cmd.ExecuteNonQuery();
            }
        }

        void getPrice ()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "SELECT CartItem.ProductID, Product.Name, Product.Description, Product.Price, CartItem.Quantity FROM CartItem INNER JOIN Cart ON CartItem.CartID = Cart.CartID INNER JOIN Product ON CartItem.ProductID = Product.ProductID WHERE(cartitem.CustomerID = @CustomerID)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("CustomerID", Session["CustomerID"].ToString());

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["Price"] = dr.GetValue(3).ToString();
                    }
                }

            }

            
        }

        void CreateNumber ()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "Insert into [TrackingCount](TrackID)values('TN2021-')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                GetTrackNum(con);
            }
        }

        void GetTrackNum(SqlConnection sqlConnection)
        {
            string query = "SELECT IDENT_CURRENT('TrackingCount')";
            SqlCommand cmd = new SqlCommand(query, sqlConnection);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["Tracknum"] = dr.GetValue(0).ToString();
                }
            }
        }

        void TrackingCreateNumber()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "Update [Order] SET TrackingNumber=('TN2021- ' + @Tracknum)  WHERE OrderID=@OrderID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("Tracknum", Session["Tracknum"].ToString());
                cmd.Parameters.AddWithValue("OrderID", Session["OrderID"].ToString());
                cmd.ExecuteNonQuery();
            }
        }

        void ClearCart()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE From cartitem where CustomerID= @CustomerID", con);
                cmd.Parameters.AddWithValue("CustomerID", Session["CustomerID"].ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox11.Text = "";
            
        }



    }
} 