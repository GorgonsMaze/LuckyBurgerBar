using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256_IArsenault_Lab1
{
    public partial class Section : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Standard check for authenticated user
            // check for authenticated user send to login
            // page if not authenticated      
            if (!Request.IsAuthenticated)
            {
                // If request is not authenticated redirect to login
                Response.Redirect("~/Login.aspx");
            }
            int intID;
            // Use the request namespace to determine a query string value
            if (RouteData.Values["sect_id"] != null)
            {
                // request.QueryString gets items from query string
                // convert the query string to the proper data type
                intID = Convert.ToInt32(RouteData.Values["sect_id"].ToString());

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
                btnAddUpdateSection.Text = "Update";
                // Instatiate a class object to hold the data
                App_Code.Section sec = new App_Code.Section(intID);

                // Call class function to retrieve current data and store in DataTable
                // use data to populate form controls - textboxes - dropdownlists etc.
                if (sec != null)
                {
                    txtSecName.Text = sec.sectName;
                    txtSecDesc.Text = sec.sectDesc;
                    chkSecActive.Checked = sec.sectActive;
                }
            }
            else
            {
                // If in add mode no need to get data, so we'll just show a blank form 
                // changing the button text to appropriate function - Add
                btnAddUpdateSection.Text = "Add";
            }
        }


        // Cancel Click
        protected void btnSecCancel_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");
        }

        // Add Update Section Clcik
        protected void btnAddUpdateSection_Click(object sender, EventArgs e)
        {
            // Handle Add or Update function
            // If in edit mode
            // Instatiate class object
            App_Code.Section sec;

            // If the route data id is not null
            if (RouteData.Values["sect_id"] != null)
            {
                //- request.QueryString gets items from the query string
                //- convert the query string to the proper data type       
                sec = new App_Code.Section(Convert.ToInt32(
                    RouteData.Values["sect_id"].ToString()));

            }
            else
            {
                // - or set it to a number that will never be a valid value (good for conditional population of the data on the page,
                sec = new App_Code.Section();
            }

            sec.sectName = txtSecName.Text.Trim();
            sec.sectDesc = txtSecDesc.Text.Trim();
            sec.sectActive = Convert.ToBoolean(chkSecActive.Checked.ToString());

            //if id>0, that means it is a current role for updating
            //else it is a new role for inserting
            if (sec.sectID > 0)
            {
                if (App_Code.Section.UpdateSection(sec))
                {
                    Response.Redirect("~/Admin/Sections");
                }
                else
                {
                    lblMessage.Text = "User update failed. Try again!";
                }
            }
            else
            {
                if (App_Code.Section.InsertSection(sec))
                {
                    Response.Redirect("~/Admin/Sections");
                }
                else
                {
                    lblMessage.Text = "User insert failed. Try again!";
                }
            }

        }
    }
}