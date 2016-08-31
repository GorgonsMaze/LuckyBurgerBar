using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Collections;
using System.Data;
using System.Text;


namespace SE256_IArsenault_Lab1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Makes password input entry hidden from plain view
            txtPassword.Attributes["type"] = "password";

            //btnSignIn.Attributes["type"] = "submit";
        }

        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {
            // On Forgot Password? button click redirect to Forgot Password Form Page
            Response.Redirect("/Forgot-Password");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {

            // Declare the DataTabe dt for Class function return type
            DataTable dt = new DataTable();

            // Attempt to validate User Credentials
            // Create private variables for current web form
            if (!string.IsNullOrEmpty(txtUsername.Text) && !string.IsNullOrEmpty(txtPassword.Text))
            {
                // Set string value to Class function that returns string
                dt = App_Code.User.Login(txtUsername.Text.Trim(), txtPassword.Text.Trim());
             
            }
            else
            {
                lblMessage.Text = "Login Failed! You must enter a Username and Password!";
                return;
            }

            if (dt.Rows.Count > 0)
            {
                // Use .NET built in security system to set the UserId
                // within a client-side Cookie
                FormsAuthenticationTicket t =
                    new FormsAuthenticationTicket(
                        1,
                        dt.Rows[0]["UserID"].ToString(),
                        DateTime.Now,
                        DateTime.Now.AddMinutes(480), // value of time out property
                        false, // value of IsPersistent property
                        "Admin");

                // For security reasons we may hash the cookies
                string encryptedTicked = FormsAuthentication.Encrypt(t);
                HttpCookie c = new HttpCookie(
                    FormsAuthentication.FormsCookieName, encryptedTicked);
                // Add cookie to response
                Response.Cookies.Add(c);

                // Set the username to a client side cookie for future reference
                Session["FullName"] = dt.Rows[0]["UserFName"].ToString();

                // Redirect the browser back to the home page
                Response.Redirect("~/Default.aspx");

            }
            else
            {
                // Display login error message
                lblMessage.Text = "Login Failed!";
            }

        }
    }
}