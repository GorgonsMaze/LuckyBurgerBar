using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE256_IArsenault_Lab1
{
    public partial class Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ddlTableSection.Items[0].Attributes["disabled"] = "true";

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
            if (RouteData.Values["tbl_id"] != null)
            {
                // request.QueryString gets items from query string
                // convert the query string to the proper data type
                intID = Convert.ToInt32(RouteData.Values["tbl_id"].ToString());

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
                btnAddUpdateTable.Text = "Update";
                // Instatiate a class object to hold the data
                App_Code.Table tb = new App_Code.Table(intID);

                // Call class function to retrieve current data and store in DataTable
                // use data to populate form controls - textboxes - dropdownlists etc.
                if (tb != null)
                {
                    ddlTableSection.SelectedIndex = tb.sectID;
                    txtTableName.Text = tb.tblName;
                    txtTableDesc.Text = tb.tblDesc;
                    txtTableSeatCount.Text = tb.tblSeatCnt.ToString();
                    chkTableIsActive.Checked = tb.tblActive;
                }
            }
            else
            {
                // If in add mode no need to get data, so we'll just show a blank form 
                // changing the button text to appropriate function - Add
                btnAddUpdateTable.Text = "Add";
            }
        }

        // Add Update Table button Click
        protected void btnAddUpdateTable_Click(object sender, EventArgs e)
        {
            // Handle Add or Update function
            // If in edit mode
            // Instatiate class object
            App_Code.Table tb;
            if (RouteData.Values["tbl_id"] != null)
            {
                //- request.QueryString gets items from the query string
                //- convert the query string to the proper data type       
                tb = new App_Code.Table(Convert.ToInt32(
                    RouteData.Values["tbl_id"].ToString()));

            }
            else
            {
                // - or set it to a number that will never be a valid value (good for conditional population of the data on the page,
                tb = new App_Code.Table();
            }

            tb.sectID = Convert.ToInt32(ddlTableSection.SelectedIndex);
            tb.tblName = txtTableName.Text.Trim();
            tb.tblDesc = txtTableDesc.Text.Trim();
            tb.tblSeatCnt = Convert.ToInt32(txtTableSeatCount.Text.Trim());
            tb.tblActive = Convert.ToBoolean(chkTableIsActive.Checked.ToString());

            //if id>0, that means it is a current role for updating
            //else it is a new role for inserting
            if (tb.tableID > 0)
            {
                if (App_Code.Table.UpdateTable(tb))
                {
                    Response.Redirect("~/Admin/Tables");
                }
                else
                {
                    lblMessage.Text = "Table update failed. Try again!";
                }
            }
            else
            {
                if (App_Code.Table.InsertTable(tb))
                {
                    Response.Redirect("~/Admin/Tables");
                }
                else
                {
                    lblMessage.Text = "Table insert failed. Try again!";
                }
            }


        }

        // Cancel Table BUtton Clcik
        protected void btnTableCancel_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");
        }

    }
}