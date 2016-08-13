using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}