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
            if (!IsPostBack)
            {
                ddlMenu.Items.Insert(0, "Please Select Menu...");
                ddlCategory.Items.Insert(0, "Please Select Category...");
            }
            // Changes Color of selected index 
            //ddlStates.Items[0].Attributes["style"] = "color:grey";
            ddlMenu.Items[1].Attributes["style"] = "color:black";
            ddlMenu.Items[2].Attributes["style"] = "color:black";
            ddlMenu.Items[3].Attributes["style"] = "color:black";
            ddlCategory.Items[1].Attributes["style"] = "color:black";
            ddlCategory.Items[2].Attributes["style"] = "color:black";
            ddlCategory.Items[3].Attributes["style"] = "color:black";

        }
    }
}