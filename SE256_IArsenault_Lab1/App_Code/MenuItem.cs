using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SE256_IArsenault_Lab1.App_Code
{
    public class MenuItem
    {
        #region properties
        public int itemID { get; set; }
        public int menuID { get; set; }
        public int catID { get; set; }
        public string itemName { get; set; }
        public string itemDesc { get; set; }
        public string itemAllergens { get; set; }
        public string itemPrice { get; set; }
        public bool itemGlutFree { get; set; }
        public bool itemActive { get; set; }
        #endregion

        #region constructors
        #endregion

        #region methods
        #endregion
    }
}