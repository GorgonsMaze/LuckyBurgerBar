using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SE256_IArsenault_Lab1
{
    public partial class Responsive : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check to see if the browser has a valid authentication ticket
            // for current users session. If so, manipulate the login and logout buttons 
            // and welcome message
            {
                if (Request.IsAuthenticated)
                {
                    // If logged in - hide the login button
                    lbtnLogIn.Visible = false;
                    // If logged in we can show the logout button
                    lbtnLogOut.Visible = true;
                    // Generate a personalized text message to display on the site
                    // Grab the cookie
                    if (Session["Fullname"] != null)
                    {
                        //lblGreeting.Text = Request.Cookies["Fullname"].Value.ToString();
                        lblGreeting.Text = String.Concat("Welcome, ", Session["Fullname"].ToString());
                        //HttpCookie aCookie = Request.Cookies["Fullname"];
                        //lblGreeting.Text = "Welcome Fartstick";
                        // enable menu when user is authenticated
                    }
                }
                else
                {
                    // since we have no been authenticated, we have to provide a link to login with
                    lbtnLogIn.Visible = true;
                    // Hide the logout button since the user is not authenticated
                    lbtnLogOut.Visible = false;
                    // Generate a generic text message to display on the site
                    lblGreeting.Text = "Welcome, Stranger!";
                }

            }
        }

  
        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            // When the Login button is clicked - send them to login page
            Response.Redirect("~/Sign-In");
        }

        protected void lbtnLogOut_Click(object sender, EventArgs e)
            // Log the user off from Cookie Authentication System
            // (.NET built in security system )
        {

            FormsAuthentication.SignOut();
            // Set name session variable to nothing
            Session["Fullname"] = null;

            // When the Logout button is clicked - Log them out - send back home
            Response.Redirect("Home");

        }

    }
}