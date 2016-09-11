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

        }
    }
}