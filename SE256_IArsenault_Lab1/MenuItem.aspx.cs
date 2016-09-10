using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256_IArsenault_Lab1
{
    public partial class MenuItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Disable index[0] as a choice in the drop down
            ddlCategory.Items[0].Attributes["disabled"] = "true";
            ddlMenu.Items[0].Attributes["disabled"] = "true";

            // Standard check for authenticated user
            // check for authenticated user send to login
            // page if not authenticated      
            if (!Request.IsAuthenticated)
            {
                // If request is not authenticated redirect to login
                Response.Redirect("~/Login.aspx");

            }
            int intID;
            // Use the request namespace to determin a query string value
            if (RouteData.Values["item_id"] != null)
            {
                // request.QueryString gets items from query string
                // convert the query string to the proper data type
                intID = Convert.ToInt32(RouteData.Values["item_id"].ToString());

            }
            else
            {
                // .... or set it to a number that will never be a value value (good for conditional population of data on the page...
                intID = -1;
            }


            if (!IsPostBack)
            {
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
                btnAddUpdateMenuItem.Text = "Update";
                // Instatiate a class object to hold the data
                App_Code.MenuItem mi = new App_Code.MenuItem(intID);
                
                // Call class function to retrieve current data and store in DataTable
                // use data to populate form controls - textboxes - dropdownlists etc.
                if (mi != null)
                {
                    txtMenuName.Text = mi.itemName;
                    

                       //public int itemID { get; set; }
                       // public int menuID { get; set; }
                       // public int catID { get; set; }
                       // public string itemName { get; set; }
                       // public string itemDesc { get; set; }
                       // public string itemAllergens { get; set; }
                       // public decimal itemPrice { get; set; }
                       // public bool itemGlutFree { get; set; }
                       // public bool itemActive { get; set; }

        //txtFName.Text = us.userFirst;
        //txtLName.Text = us.userLast;
        //txtAddress1.Text = us.userAdd1;
        //txtAddress2.Text = us.userAdd2;
        //txtCity.Text = us.userCity;
        //ddlStates.SelectedValue = us.userState;
        //txtZip.Text = us.userZip;
        //txtPassword.Text = us.userPwd;
        //txtConfirmPassword.Text = us.userPwd;
        //txtEmail.Text = us.userEmail;
        //txtConfirmEmail.Text = us.userEmail;
        //txtPhone.Text = us.userPhone;
        //chkUserIsActive.Checked = us.userActive;
    }
            }
            else
            {
                // If in add mode no need to get data, so we'll just show a blank form 
                // changing the button text to appropriate function - Add
                btnAddUpdateMenuItem.Text = "Add";
            }
        }


        // Add Update Menu Item Button Clcik
        protected void btnAddUpdateMenuItem_Click(object sender, EventArgs e)
        {

        }

        // Cancel Menu Item Click
        protected void btnCancelMenuItem_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");

        }

       
    }
}