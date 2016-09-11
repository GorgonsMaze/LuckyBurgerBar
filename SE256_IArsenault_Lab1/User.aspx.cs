using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256_IArsenault_Lab1
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Disable index[0] as a choice in the drop down
            ddlStates.Items[0].Attributes["disabled"] = "true";
            // Makes password hidden when entered 
            txtPassword.Attributes["type"] = "password";
            txtConfirmPassword.Attributes["type"] = "password";

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
            if (RouteData.Values["user_id"] != null)
            {
                // request.QueryString gets items from query string
                // convert the query string to the proper data type
                intID = Convert.ToInt32(RouteData.Values["user_id"].ToString());

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
                btnAddUpdateUser.Text = "Update";
                // Instatiate a class object to hold the data
                App_Code.User us = new App_Code.User(intID);

                // Call class function to retrieve current data and store in DataTable
                // use data to populate form controls - textboxes - dropdownlists etc.
                if (us != null)
                {
                    txtFName.Text = us.userFirst;
                    txtLName.Text = us.userLast;
                    txtAddress1.Text = us.userAdd1;
                    txtAddress2.Text = us.userAdd2;
                    txtCity.Text = us.userCity;
                    ddlStates.SelectedValue = us.userState;
                    txtZip.Text = us.userZip;
                    txtPassword.Text = us.userPwd;
                    txtConfirmPassword.Text = us.userPwd;
                    txtEmail.Text = us.userEmail;
                    txtConfirmEmail.Text = us.userEmail;
                    txtPhone.Text = us.userPhone;
                    chkUserIsActive.Checked = us.userActive;
                }
            }
            else
            {
                // If in add mode no need to get data, so we'll just show a blank form 
                // changing the button text to appropriate function - Add
                btnAddUpdateUser.Text = "Add";
            }
        }

        // Update/ Add Button Click
        protected void btnAddUpdateUser_Click(object sender, EventArgs e)
        {
            // Handle Add or Update function
            // If in edit mode
            // Instatiate class object
            App_Code.User us;

            if (RouteData.Values["user_id"] != null)
            {
                //- request.QueryString gets items from the query string
                //- convert the query string to the proper data type       
                us = new App_Code.User(Convert.ToInt32(
                    RouteData.Values["user_id"].ToString()));

            }
            else
            {
                // - or set it to a number that will never be a valid value (good for conditional population of the data on the page,
                us = new App_Code.User();
            }


            // Assign new updated values to class object
            us.userFirst = txtFName.Text.Trim();
            us.userLast = txtLName.Text.Trim();
            us.userAdd1 = txtAddress1.Text.Trim();
            us.userAdd2 = txtAddress2.Text.Trim();
            us.userCity = txtCity.Text.Trim();
            us.userState = ddlStates.SelectedValue;
            us.userZip = txtZip.Text.Trim();
            us.userSalt = "Salt";
            us.userPwd = txtPassword.Text.Trim();
            //us.userPwd = txtConfirmPassword.Text.Trim();
            us.userEmail = txtEmail.Text.Trim();
            //us.userEmail = txtConfirmEmail.Text.Trim();
            us.userPhone = txtPhone.Text.Trim();
            us.userActive = Convert.ToBoolean(chkUserIsActive.Checked.ToString());

            //if id>0, that means it is a current role for updating
            //else it is a new role for inserting
            if (us.userID > 0)
            {
                if (App_Code.User.UpdateUser(us))
                {
                    Response.Redirect("~/Admin/Users");
                }
                else
                {
                    lblMessage.Text = "User update failed. Try again!";
                }
            }
            else
            {
                if (App_Code.User.InsertUser(us))
                {
                    Response.Redirect("~/Admin/Users");
                }
                else
                {
                    lblMessage.Text = "User insert failed. Try again!";
                }
            }
        }



        // Cancel Button Click
        protected void btnCancelUser_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");
        }

   
    }
}