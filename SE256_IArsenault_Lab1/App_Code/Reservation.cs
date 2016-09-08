using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SE256_IArsenault_Lab1.App_Code
{
    public class Reservation
    {
        #region properties
        public int resId { get; set; }
        public int guestId { get; set; }
        public int tblId { get; set; }
        public int userId { get; set; }
        public DateTime resDate { get; set; }
        public DateTime resTime { get; set; }
        public int resGuestCount { get; set; }
        public string resSpecReq { get; set; }
        #endregion

        #region constructors
        #endregion

        #region methods
        #endregion
    }
}