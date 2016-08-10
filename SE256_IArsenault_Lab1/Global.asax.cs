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
            // User pages
            routes.MapPageRoute("Home", "Home", "~/Default.aspx");
            routes.MapPageRoute("Lunch-Menu123", "Lunch-Menu", "~/LunchMenu.aspx");
            routes.MapPageRoute("Dinner-Menu", "Dinner-Menu", "~/DinnerMenu.aspx");
            routes.MapPageRoute("Reservations", "Reservations", "~/Reservations.aspx");
            routes.MapPageRoute("Reservation", "Reservation", "~/Reservation.aspx"); 
            routes.MapPageRoute("Directions", "Directions", "~/Directions.aspx");
            routes.MapPageRoute("About", "About", "~/About.aspx");
            routes.MapPageRoute("Contact-Us", "Contact-Us", "~/Contact.aspx");
            routes.MapPageRoute("Sign-In", "Sign-In", "~/Login.aspx");
            routes.MapPageRoute("Forgot-Password", "Forgot-Password", "~/ForgotPassword.aspx");
            routes.MapPageRoute("Sign-Up", "Sign-Up", "~/Signup.aspx");
            //Amin pages 
            routes.MapPageRoute("MenuItems", "Admin/Menu-Items", "~/MenuItems.aspx");
            routes.MapPageRoute("MenuItem", "Admin/Menu-Item", "~/MenuItem.aspx");
            routes.MapPageRoute("Sections", "Admin/Sections", "~/Sections.aspx");
            routes.MapPageRoute("Section", "Admin/Section", "~/Section.aspx");
            routes.MapPageRoute("Tables", "Admin/Tables", "~/Tables.aspx");
            routes.MapPageRoute("Table", "Admin/Table", "~/Table.aspx");
            routes.MapPageRoute("Reservation-Management", "Admin/Res-Mgmt", "~/ResMgmt.aspx");
            routes.MapPageRoute("Users", "Admin/Users", "~/Users.aspx");
            routes.MapPageRoute("User", "Admin/User", "~/User.aspx");

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