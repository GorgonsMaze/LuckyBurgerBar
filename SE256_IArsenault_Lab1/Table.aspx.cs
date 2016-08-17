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
            if (!IsPostBack)
            {
                // Insert please select list item to index 0
                //ddlTableSection.Items.Insert(0, "Please Select Table Section...");

                //// Set the DDL to index 0
                //ddlTableSection.SelectedIndex = 0;

                // Disable index[0] as a choice in the drop down
                ddlTableSection.Items[0].Attributes["disabled"] = "true";
            }

            // Changes Color of selected index 
            //ddlTableSection.Items[1].Attributes["style"] = "color:black";
            //ddlTableSection.Items[2].Attributes["style"] = "color:black";
            //ddlTableSection.Items[3].Attributes["style"] = "color:black";
            //ddlTableSection.Items[4].Attributes["style"] = "color:black";
            //ddlTableSection.Items[5].Attributes["style"] = "color:black";

        }



        protected void btnTableCancel_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");
        }
    }
}