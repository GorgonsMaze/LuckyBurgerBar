using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SE256_IArsenault_Lab1.App_Code
{
    public class Guest
    {

        #region properties

        public int guestID { get; set; }
        public string guestEmail { get; set; }
        public string guestFName { get; set; }
        public string guestLName { get; set; }
        public string guestSalt { get; set; }
        public string guestPwd { get; set; }
        public string guestPhone { get; set; }

        #endregion

        #region constructors
        // Default Constructor
        public Guest() { }
        // Overloaded Constructor
        // Will return object instatiated from active row returned
        // from data base fitlered by unique identifier
        /**************** Changed guestID to guestId **** Different from properties GuestID ****/
        public Guest(int guestId)
        {
            DataTable dt = new DataTable();
            dt = GetGuestById(guestId);
            if (dt.Rows.Count > 0)
            {
                this.guestID = Convert.ToInt32(dt.Rows[0]["guest_id"].ToString());
                this.guestEmail = dt.Rows[0]["guest_email"].ToString();
                this.guestFName = dt.Rows[0]["guest_first"].ToString();
                this.guestLName = dt.Rows[0]["guest_last"].ToString();
                this.guestSalt = dt.Rows[0]["guest_salt"].ToString();
                this.guestPwd = dt.Rows[0]["guest_pwd"].ToString();
                this.guestPhone = dt.Rows[0]["guest_phone"].ToString();

            }
        }

        /**************** Changed guestID to guestId **** Different from properties GuestID ****/
        public Guest(string guestemail)
        {
            DataTable dt = new DataTable();
            dt = GetGuestByEmail(guestemail);
            if (dt.Rows.Count > 0)
            {
                this.guestID = Convert.ToInt32(dt.Rows[0]["guest_id"].ToString());
                this.guestEmail = dt.Rows[0]["guest_email"].ToString();
                this.guestFName = dt.Rows[0]["guest_first"].ToString();
                this.guestLName = dt.Rows[0]["guest_last"].ToString();
                this.guestSalt = dt.Rows[0]["guest_salt"].ToString();
                this.guestPwd = dt.Rows[0]["guest_pwd"].ToString();
                this.guestPhone = dt.Rows[0]["guest_phone"].ToString();

            }
        }
        #endregion

        #region methods

        // Get by ID
        private static DataTable GetGuestById(int id)
        {
            //This example will use embedded SQL
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            //connection object
            SqlCommand cmd = new SqlCommand("guests_getbyid", cn);
            //Create datatable to hold result set
            DataTable dt = new DataTable();
            // Mark the Command as  text type
            //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@guest_id", SqlDbType.Int).Value = id;
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


        // Get by Email
        private static DataTable GetGuestByEmail(string email)
        {
            //This example will use embedded SQL
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            //connection object
            SqlCommand cmd = new SqlCommand("guests_getbyemail", cn);
            //Create datatable to hold result set
            DataTable dt = new DataTable();
            // Mark the Command as  text type
            //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@guest_email", SqlDbType.Int).Value = email;
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




        //// Insert new Guest
        public static bool InsertGuest(Guest ig)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("guests_insert", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@guest_email", SqlDbType.VarChar).Value = ig.guestEmail;
            cmd.Parameters.Add("@guest_first", SqlDbType.VarChar).Value = ig.guestFName;
            cmd.Parameters.Add("@guest_last", SqlDbType.VarChar).Value = ig.guestLName;
            cmd.Parameters.Add("@guest_salt", SqlDbType.VarChar).Value = ig.guestSalt;
            cmd.Parameters.Add("@guest_pwd", SqlDbType.VarChar).Value = ig.guestPwd;
            cmd.Parameters.Add("@guest_phone", SqlDbType.VarChar).Value = ig.guestPhone;


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



        ////Update Guest

        public static bool UpdateGuest(Guest ug)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("guests_update", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@guest_id", SqlDbType.Int).Value = ug.guestID;
            cmd.Parameters.Add("@guest_email", SqlDbType.VarChar).Value = ug.guestEmail;
            cmd.Parameters.Add("@guest_first", SqlDbType.VarChar).Value = ug.guestFName;
            cmd.Parameters.Add("@guest_last", SqlDbType.VarChar).Value = ug.guestLName;
            cmd.Parameters.Add("@guest_salt", SqlDbType.VarChar).Value = ug.guestSalt;
            cmd.Parameters.Add("@guest_pwd", SqlDbType.VarChar).Value = ug.guestPwd;
            cmd.Parameters.Add("@guest_phone", SqlDbType.VarChar).Value = ug.guestPhone;

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