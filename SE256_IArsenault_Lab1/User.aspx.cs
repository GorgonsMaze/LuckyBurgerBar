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
                ddlStates.Items.Insert(0, "Please Select a State...");
            }

            // Makes password hidden when entered 
            txtPassword.Attributes["type"] = "password";
            txtConfirmPassword.Attributes["type"] = "password";

            // Changes Color of selected index 
            //ddlStates.Items[0].Attributes["style"] = "color:grey";
            ddlStates.Items[1].Attributes["style"] = "color:black";
            ddlStates.Items[2].Attributes["style"] = "color:black";
            ddlStates.Items[3].Attributes["style"] = "color:black";





        }
    }
}