using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace SE256_IArsenault_Lab1.App_Code
{
    public class User
    {

        #region properties
        public int userID { get; set; }
        public string userEmail { get; set; }
        public string userFirst { get; set; }
        public string userLast { get; set; }
        public string userAdd1 { get; set; }
        public string userAdd2 { get; set; }
        public string userCity { get; set; }
        public string userState { get; set; }
        public string userZip { get; set; }
        public string userSalt { get; set; }
        public string userPwd { get; set; }
        public string userPhone { get; set; }
        public bool userActive { get; set; }
        #endregion

        #region constructors
        // Default Constructor
        public User() { }
        // Overloaded Constructor
        // Will return object instatiated from active row returned
        // from data base fitlered by unique identifier
        /**************** Changed userID to userId **** Different from properties userID ****/
        public User(int userId)
        {
            DataTable dt = new DataTable();
            dt = GetUserById(userId);
            if (dt.Rows.Count > 0)
            {
                this.userID = Convert.ToInt32(dt.Rows[0]["user_id"].ToString());
                this.userEmail = dt.Rows[0]["user_email"].ToString();
                this.userFirst = dt.Rows[0]["user_first"].ToString();
                this.userLast = dt.Rows[0]["user_last"].ToString();
                this.userAdd1 = dt.Rows[0]["user_add1"].ToString();
                this.userAdd2 = dt.Rows[0]["user_add2"].ToString();
                this.userCity = dt.Rows[0]["user_city"].ToString();
                this.userState = dt.Rows[0]["state_id"].ToString();
                this.userZip = dt.Rows[0]["user_zip"].ToString();
                this.userSalt = dt.Rows[0]["user_salt"].ToString();
                this.userPwd = dt.Rows[0]["user_pwd"].ToString();
                this.userPhone = dt.Rows[0]["user_phone"].ToString();
                this.userActive = Convert.ToBoolean(dt.Rows[0]["user_active"].ToString());
            }
        }
        #endregion

        #region methods
        //Get
        private static DataTable GetUserById(int id)
        {
            //This example will use embedded SQL
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            //connection object
            SqlCommand cmd = new SqlCommand("users_getbyid", cn);
            //Create datatable to hold result set
            DataTable dt = new DataTable();
            // Mark the Command as  text type
            //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = id;
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

        ////Insert
        public static bool InsertUser(User iu)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("users_insert", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@user_email", SqlDbType.VarChar).Value = iu.userEmail;
            cmd.Parameters.Add("@user_first", SqlDbType.VarChar).Value = iu.userFirst;
            cmd.Parameters.Add("@user_last", SqlDbType.VarChar).Value = iu.userLast;
            cmd.Parameters.Add("@user_add1", SqlDbType.VarChar).Value = iu.userAdd1;
            cmd.Parameters.Add("@user_add2", SqlDbType.VarChar).Value = iu.userAdd2;
            cmd.Parameters.Add("@user_city", SqlDbType.VarChar).Value = iu.userCity;
            cmd.Parameters.Add("@state_id", SqlDbType.VarChar).Value = iu.userState;
            cmd.Parameters.Add("@user_zip", SqlDbType.VarChar).Value = iu.userZip;
            cmd.Parameters.Add("@user_salt", SqlDbType.VarChar).Value = iu.userSalt;
            cmd.Parameters.Add("@user_pwd", SqlDbType.VarChar).Value = iu.userPwd;
            cmd.Parameters.Add("@user_phone", SqlDbType.VarChar).Value = iu.userPhone;
            cmd.Parameters.Add("@user_active", SqlDbType.Bit).Value = iu.userActive;

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


        ////Update

        public static bool UpdateUser(User uu)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("users_update", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = uu.userID;
            cmd.Parameters.Add("@user_email", SqlDbType.VarChar).Value = uu.userEmail;
            cmd.Parameters.Add("@user_first", SqlDbType.VarChar).Value = uu.userFirst;
            cmd.Parameters.Add("@user_last", SqlDbType.VarChar).Value = uu.userLast;
            cmd.Parameters.Add("@user_add1", SqlDbType.VarChar).Value = uu.userAdd1;
            cmd.Parameters.Add("@user_add2", SqlDbType.VarChar).Value = uu.userAdd2;
            cmd.Parameters.Add("@user_city", SqlDbType.VarChar).Value = uu.userCity;
            cmd.Parameters.Add("@state_id", SqlDbType.VarChar).Value = uu.userState;
            cmd.Parameters.Add("@user_zip", SqlDbType.VarChar).Value = uu.userZip;
            cmd.Parameters.Add("@user_salt", SqlDbType.VarChar).Value = uu.userSalt;
            cmd.Parameters.Add("@user_pwd", SqlDbType.VarChar).Value = uu.userPwd;
            cmd.Parameters.Add("@user_phone", SqlDbType.VarChar).Value = uu.userPhone;
            cmd.Parameters.Add("@user_active", SqlDbType.Bit).Value = uu.userActive;

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




        public static DataTable Login(string useremail, string password)
        {
            // Create SQL connection object
            // get connection string from web.config
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);

            // Create SQL Command
            // type as stored procedure
            // Give stored procedure name
            SqlCommand cmd = new SqlCommand("users_login", cn);

            // Mark the SQL Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure                
            SqlParameter pUsername = new SqlParameter("@user_email", SqlDbType.VarChar, 100);
            pUsername.Value = useremail;
            cmd.Parameters.Add(pUsername);

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@user_pwd", SqlDbType.VarChar).Value = password;

            // Instatiate return type
            DataTable dt = new DataTable();

            try
            {
                // Open the connection 
                cn.Open();
                // Create SQL Data Adapter passing the Command
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception e)
            {
                // Error Processing goes here
            }
            finally
            {
                // Close the connection 
                cn.Close();
            }

            // Return the DataSet
            return dt;

        }
        #endregion





    }

   
}