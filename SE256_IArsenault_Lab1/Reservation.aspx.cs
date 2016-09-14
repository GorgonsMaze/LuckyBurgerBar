using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256_IArsenault_Lab1
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Disables the first index of ddl from selection
            ddlGuest.Items[0].Attributes["disabled"] = "true";
            ddlTable.Items[0].Attributes["disabled"] = "true";
            ddlUser.Items[0].Attributes["disabled"] = "true";

            // Standard check for authenticated user
            // If user is not authenticated send to login page 
            if (!Request.IsAuthenticated)
            {
                // If request is not authenticated redirect to login
                Response.Redirect("~/Sign-in");
            }
            int intID;
            // Use the request namespace to determine a query string value
            if (RouteData.Values["res_id"] != null)
            {
                // request.QueryString gets items from query string
                // convert the query string to the proper data type
                intID = Convert.ToInt32(RouteData.Values["res_id"].ToString());

            }
            else
            {
                // .... or set it to a number that will never be a value value (good for conditional population of data on the page...
                intID = -1;
            }

            // .. for example if id<> -1 fill user record or if id = -1, prepare form for add record functionality
            if (!IsPostBack)
            {
                // bind form data objects procedure call, made on the first page
                BindData(intID);
            }
        }

        private void BindData(int intID)
        {
            // Render the page according to query string variable
            // If in edit mode
            if (intID != -1)
            {
                // change the text of our multipurpose button to appropriate function
                btnAddUpdateRes.Text = "Update";
                // Instatiate a class object to hold the data
                App_Code.Reservation res = new App_Code.Reservation(intID);

                // Call class function to retrieve current data and store in DataTable
                // use data to populate form controls - textboxes - dropdownlists etc.
                if (res != null)
                {
                    ddlGuest.SelectedValue = Convert.ToString(res.guestID);
                    ddlTable.SelectedValue = Convert.ToString(res.tblID);
                    ddlUser.SelectedValue = Convert.ToString(res.userId);
                    txtResDate.Text = res.resDate.ToString();
                    txtResTime.Text = res.resTime.ToString();
                    txtGuestCount.Text = res.resGuestCount.ToString();
                    txtSpecReq.Text = res.resSpecReq;
                }
            }
            else
            {
                // If in add mode no need to get data, so we'll just show a blank form 
                // changing the button text to appropriate function - Add
                btnAddUpdateRes.Text = "Add";
            }
        }

        // Add Update Reservation Button Click
        protected void btnAddUpdateRes_Click(object sender, EventArgs e)
        {
            // Handle Add or Update function
            // If in edit mode
            // Instatiate class object
            App_Code.Reservation res;

            if (RouteData.Values["res_id"] != null)
            {
                //- request.QueryString gets items from the query string
                //- convert the query string to the proper data type       
                res = new App_Code.Reservation(Convert.ToInt32(
                    RouteData.Values["res_id"].ToString()));

            }
            else
            {
                // - or set it to a number that will never be a valid value (good for conditional population of the data on the page,
                res = new App_Code.Reservation();
            }

            // Assign new updated values to class object
            res.guestID = Convert.ToInt32(ddlGuest.SelectedValue);
            res.tblID = Convert.ToInt32(ddlTable.SelectedValue);
            res.userId = Convert.ToInt32(ddlUser.SelectedValue);
            res.resDate = Convert.ToDateTime(txtResDate.Text.Trim());
            res.resTime = Convert.ToDateTime(txtResTime.Text.Trim());
            res.resGuestCount = Convert.ToInt32(txtGuestCount.Text.Trim());
            res.resSpecReq = txtSpecReq.Text.Trim();

            //if id>0, that means it is a current role for updating
            //else it is a new role for inserting
            if (res.resdID > 0)
            {
                if (App_Code.Reservation.UpdateReservation(res))
                {
                    Response.Redirect("~/Admin/Reservations");
                }
                else
                {
                    lblMessage.Text = "Reservation update failed. Try again!";
                }
            }
            else
            {
                if (App_Code.Reservation.InsertReservation(res))
                {
                    Response.Redirect("~/Admin/Reservations");
                }
                else
                {
                    lblMessage.Text = "Reservation insert failed. Try again!";
                }
            }



        }

        // Cancel Button Click
        protected void btnCancelRes_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");
        }
    }
}