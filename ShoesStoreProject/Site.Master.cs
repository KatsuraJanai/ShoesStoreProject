using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoesStoreProject
{
    public partial class SiteMaster : MasterPage
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string sessionRole = Session["role"] as string;

                if (string.IsNullOrEmpty(sessionRole))
                {


                    LinkButton10.Visible = false; // Orders link button
                    LinkButton11.Visible = false; // update customer link button


                }
                else if (Session["role"].Equals("user"))
                {


                    LinkButton6.Visible = false; // Customer login link button
                    LinkButton7.Visible = false; // admin login link button
                    LinkButton8.Visible = false; // customer signup link button
                    LinkButton10.Visible = true; // orders signup link button
                    LinkButton11.Visible = false; // update customer link button
                    LinkButton12.Visible = true; // logout link button



                }
                else if (Session["role"].Equals("admin"))
                {


                    LinkButton6.Visible = false; // Customer login link button
                    LinkButton7.Visible = false; // admin login link button
                    LinkButton8.Visible = false; // customer signup link button
                    LinkButton10.Visible = true; // orders signup link button
                    LinkButton11.Visible = false; // update customer link button
                    LinkButton12.Visible = true; // logout link button
                    LinkButton13.Visible = true; // card user link button
                    LinkButton14.Visible = true; // ship link button
                    //LinkButton13.Text = "Hello " + Session["FirstName"].ToString();

                }
            }
            catch (Exception)
            {

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {


            Session["username"] = "";
            Session["CustomerID"] = "";
            Session["role"] = "";
            Session["status"] = "";

            Response.Redirect("HomePage.aspx");
        }
    }
}