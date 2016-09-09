using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SE256_IArsenault_Lab1.App_Code
{
    public class Reservation
    {
        #region properties
        public int resdID { get; set; }
        public int guestID { get; set; }
        public int tblID { get; set; }
        public int userId { get; set; }
        public DateTime resDate { get; set; }
        public DateTime resTime { get; set; }
        public int resGuestCount { get; set; }
        public string resSpecReq { get; set; }
        #endregion

        #region constructors
        // Default Constructor
        public Reservation() { }
        // Overloaded Constructor
        // Will return object instatiated from active row returned
        // from data base fitlered by unique identifier
        /**************** Changed resId to sectId **** Different from properties resID ****/
        public Reservation(int resId)
        {
            DataTable dt = new DataTable();
            dt = GetReservationById(resId);
            if (dt.Rows.Count > 0)
            {
                this.resdID = Convert.ToInt32(dt.Rows[0]["res_id"].ToString());
                this.guestID = Convert.ToInt32(dt.Rows[0]["guest_id"].ToString());
                this.tblID = Convert.ToInt32(dt.Rows[0]["tbl_id"].ToString());
                this.userId = Convert.ToInt32(dt.Rows[0]["user_id"].ToString());
                this.resDate = Convert.ToDateTime(dt.Rows[0]["res_date"].ToString());
                this.resTime = Convert.ToDateTime(dt.Rows[0]["res_time"].ToString());
                this.resGuestCount = Convert.ToInt32(dt.Rows[0]["res_guest_cnt"].ToString());
                this.resSpecReq = dt.Rows[0]["res_spec_req"].ToString();
            }
        }
        #endregion

        #region methods
        //Get
        private static DataTable GetReservationById(int id)
        {
            //This example will use embedded SQL
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            //connection object
            SqlCommand cmd = new SqlCommand("reservations_getbyid", cn);
            //Create datatable to hold result set
            DataTable dt = new DataTable();
            // Mark the Command as  text type
            //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@res_id", SqlDbType.Int).Value = id;
            // Open the database connection and execute the command
            try
            {
                //opens connection to database, most failures happen here
                //check connection string for proper settings
                cn.Open();
                //data adapter object is trasport link between data source and 
                //data destination
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //fill method, for multiple tables use dataset
                da.Fill(dt);
            }
            catch (Exception exc)
            {
                //just put here to make debugging easier, can look at error directly
                exc.ToString();
            }
            finally
            {
                //must always close connections
                cn.Close();
            }

            // Return the datatable
            return dt;
        }

        // Insert
        public static bool InsertReservation(Reservation ir)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("reservations_insert", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@guest_id", SqlDbType.Int).Value = ir.guestID;
            cmd.Parameters.Add("@tbl_id", SqlDbType.Int).Value = ir.guestID;
            cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = ir.guestID;
            cmd.Parameters.Add("@res_date", SqlDbType.Date).Value = ir.resDate;
            cmd.Parameters.Add("@res_time", SqlDbType.Time).Value = ir.resTime;
            cmd.Parameters.Add("@res_guest_cnt", SqlDbType.Int).Value = ir.resGuestCount;
            cmd.Parameters.Add("@res_spec_req", SqlDbType.VarChar).Value = ir.resSpecReq;

            // Open the database connection and execute the command
            try
            {
                cn.Open();
                //This is not a query so just issue the command to execute the stored procedure
                cmd.ExecuteNonQuery();
                // Set boolean successvariable to true
                blnSuccess = true;
            }
            catch (Exception exc)
            {
                //if error,notify user
                exc.ToString();
                // Set boolean to sucess variable to false
                blnSuccess = false;
            }
            finally
            {
                cn.Close();
            }
            return blnSuccess;
        }


        // Update

        public static bool UpdateReservation(Reservation ur)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("reservations_update", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@res_id", SqlDbType.Int).Value = ur.resdID;
            cmd.Parameters.Add("@guest_id", SqlDbType.Int).Value = ur.guestID;
            cmd.Parameters.Add("@tbl_id", SqlDbType.Int).Value = ur.guestID;
            cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = ur.guestID;
            cmd.Parameters.Add("@res_date", SqlDbType.Date).Value = ur.resDate;
            cmd.Parameters.Add("@res_time", SqlDbType.Time).Value = ur.resTime;
            cmd.Parameters.Add("@res_guest_cnt", SqlDbType.Int).Value = ur.resGuestCount;
            cmd.Parameters.Add("@res_spec_req", SqlDbType.VarChar).Value = ur.resSpecReq;

            // Open the database connection and execute the command
            try
            {
                cn.Open();
                //This is not a query so just issue the command to execute the stored procedure
                cmd.ExecuteNonQuery();
                blnSuccess = true;
            }
            catch (Exception exc)
            {
                //if error,notify user
                exc.ToString();
                blnSuccess = false;
            }
            finally
            {
                cn.Close();
            }
            return blnSuccess;
        }



        #endregion
    }
}