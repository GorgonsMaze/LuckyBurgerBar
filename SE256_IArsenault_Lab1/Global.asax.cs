using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace SE256_IArsenault_Lab1
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            //ignore Websource.axd file
            routes.Ignore("{resource}.axd/{*pathInfo}");
            // map static pages
            routes.MapPageRoute("Home", "Home", "~/Default.aspx");
            routes.MapPageRoute("LunchMenu", "Lunch-Menu", "~/LunchMenu.aspx");
            routes.MapPageRoute("DinnerMenu", "Dinner-Menu", "~/DinnerMenu.aspx");
            routes.MapPageRoute("Reservations", "Reservations", "~/Reservations.aspx");
            //routes.MapPageRoute("Reservation", "Reservation", "~/Reservation.aspx");  Reservation lists for admin?
            routes.MapPageRoute("Directions", "Directions", "~/Directions.aspx");
            routes.MapPageRoute("About", "About", "~/About.aspx");
            routes.MapPageRoute("ContactUs", "Contact-Us", "~/Contact.aspx");
            routes.MapPageRoute("SignIn", "Sign-In", "~/Login.aspx");
            routes.MapPageRoute("ForgotPassword", "Forgot-Password", "~/ForgotPassword.aspx");
            //routes.MapPageRoute("SignUp", "Sign-Up", "~/Signup.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}