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
            routes.MapPageRoute("Admin/MenuItems", "Admin/Menu-Items", "~/MenuItems.aspx");
            routes.MapPageRoute("Admin/MenuItem", "Admin/Menu-Item", "~/MenuItem.aspx");
            routes.MapPageRoute("Admin/Sections", "Admin/Sections", "~/Sections.aspx");
            routes.MapPageRoute("Admin/Section", "Admin/Section", "~/Section.aspx");
            routes.MapPageRoute("Admin/Tables", "Admin/Tables", "~/Tables.aspx");
            routes.MapPageRoute("Admin/Table", "Admin/Table", "~/Table.aspx");
            routes.MapPageRoute("Admin/Reservation-Management", "Admin/Res-Mgmt", "~/ResMgmt.aspx");
            routes.MapPageRoute("Admin/Users", "Admin/Users", "~/Users.aspx");
            routes.MapPageRoute("Admin/User", "Admin/User", "~/User.aspx");

            // Map Dynamic Pages
            routes.MapPageRoute("MenuItem", "Admin/Menu-Item/{item_id}", "~/MenuItem.aspx", false,
                new RouteValueDictionary { { "item_id", "-1" } });
            routes.MapPageRoute("User", "Admin/User/{user_id}", "~/User.aspx", false,
                new RouteValueDictionary { { "user_id", "-1" } });
            routes.MapPageRoute("Table", "Admin/Table/{table_id}", "~/Table.aspx", false,
                new RouteValueDictionary { { "table_id", "-1" } });
            routes.MapPageRoute("Section", "Admin/Section/{sect_id}", "~/Section.aspx", false,
                new RouteValueDictionary { { "sect_id", "-1"} });
            // Purposefully misspelled Reservation due to param name already taken -- change later if needed
            routes.MapPageRoute("Resrvation", "Reservation/{res_id}", "~/Reservation.aspx", false,
                new RouteValueDictionary { { "res_id", "-1"} });
            routes.MapPageRoute("ResMngmt", "Admin/Reservation/{res_id}", "~/Reservation.aspx", false,
                new RouteValueDictionary { {"res_id", "-1"} });
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