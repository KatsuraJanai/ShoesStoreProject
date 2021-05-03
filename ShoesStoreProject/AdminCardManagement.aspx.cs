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
    public partial class AdminProducts : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        void getCard()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Card where CardNumber='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
                    TextBox6.Text = dt.Rows[0][5].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Card Number ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        void deleteCard()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed) 
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Card WHERE CardNumber='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Card Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateCard()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Card SET CardHolderName=@CardHolderName,CVV=@CVV, ExpiryDate=@ExpiryDate, AmountOnCard=@AmountOnCard  WHERE CardNumber='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@CardHolderName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@CVV", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@ExpiryDate", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@AmountOnCard", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Card Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addNewCard()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Card(CardNumber,CardHolderName,CVV,ExpiryDate,AmountOnCard) values(@CardNumber,@CardHolderName,@CVV,@ExpiryDate,@AmountOnCard)", con);

                cmd.Parameters.AddWithValue("@CardNumber", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@CardHolderName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@CVV", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@ExpiryDate", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@AmountOnCard", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Card added Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        bool checkIfCardExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Card where CardNumber='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
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

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getCard();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfCardExists())
            {
                Response.Write("<script>alert('This card number already Exist.');</script>");
            }
            else
            {
                addNewCard();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfCardExists())
            {
                updateCard();

            }
            else
            {
                Response.Write("<script>alert('Card Number don't exist');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfCardExists())
            {
                deleteCard();

            }
            else
            {
                Response.Write("<script>alert('Card does not exist');</script>");
            }
        }
    }
}