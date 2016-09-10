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
                    txtDescription.Text = mi.itemDesc;
                    txtAllergens.Text = mi.itemAllergens;
                    txtPrice.Text = mi.itemPrice.ToString();
                    ddlMenu.SelectedIndex = mi.menuID;
                    ddlCategory.SelectedIndex = mi.catID;
                    chkGluten.Checked = mi.itemGlutFree;
                    chkMenuIsActive.Checked = mi.itemActive;

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

            // Handle Add or Update function
            // If in edit mode
            // Instatiate class object
            App_Code.MenuItem mi;
            if (RouteData.Values["item_id"] != null)
            {
                //- request.QueryString gets items from the query string
                //- convert the query string to the proper data type       
                mi = new App_Code.MenuItem(Convert.ToInt32(
                    RouteData.Values["item_id"].ToString()));

            }
            else
            {
                // - or set it to a number that will never be a valid value (good for conditional population of the data on the page,
                mi = new App_Code.MenuItem();
            }



            // Assign new updated values to the class object
            mi.itemName = txtMenuName.Text.Trim();
            mi.itemDesc = txtDescription.Text.Trim();
            mi.itemAllergens = txtAllergens.Text.Trim();
            mi.itemPrice = Convert.ToDecimal(txtPrice.Text.Trim());
            mi.menuID = Convert.ToInt32(ddlMenu.SelectedIndex);
            mi.catID = Convert.ToInt32(ddlCategory.SelectedIndex);
            mi.itemGlutFree = Convert.ToBoolean(chkGluten.Checked.ToString());
            mi.itemActive = Convert.ToBoolean(chkMenuIsActive.Checked.ToString());


            //if id>0, that means it is a current role for updating
            //else it is a new role for inserting
            if (mi.itemID > 0)
            {
                if (App_Code.MenuItem.UpdateMenuItem(mi))
                {
                    Response.Redirect("~/Admin/Menu-Items");
                }
                else
                {
                    lblMessage.Text = "Menu Item update failed. Try again!";
                }
            }
            else
            {
                if (App_Code.MenuItem.InsertMenuItem(mi))
                {
                    Response.Redirect("~/Admin/Menu-Items");
                }
                else
                {
                    lblMessage.Text = "Menu Item insert failed. Try again!";
                }
            }

        }

        // Cancel Menu Item Click
        protected void btnCancelMenuItem_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");

        }

       
    }
}