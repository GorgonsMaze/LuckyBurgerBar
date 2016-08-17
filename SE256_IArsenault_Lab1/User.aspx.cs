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
            if (!IsPostBack)
            {
                //ddlStates.Items.Insert(0, "Please Select a State...");

                // Set the drop down of states to index 0
                //ddlStates.SelectedIndex = 0;

                // Disable index[0] as a choice in the drop down
                ddlStates.Items[0].Attributes["disabled"] = "true";

            }

            // Makes password hidden when entered 
            txtPassword.Attributes["type"] = "password";
            txtConfirmPassword.Attributes["type"] = "password";

            //ddlStates.Items[1].Attributes["style"] = "color:black";
            //ddlStates.Items[2].Attributes["style"] = "color:black";
            //ddlStates.Items[3].Attributes["style"] = "color:black";

        }

        protected void btnCancelUser_Click(object sender, EventArgs e)
        {
            // On cancel button click redirect to Default Homepage.
            Response.Redirect("/Home");
        }
    }
}