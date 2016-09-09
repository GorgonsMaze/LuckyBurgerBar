using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SE256_IArsenault_Lab1.App_Code
{
    public class Section
    {
        #region properties
        public int sectID { get; set; }
        public string sectName { get; set; }
        public string sectDesc { get; set; }
        public bool sectActive { get; set; }
        #endregion

        #region constructors
        // Default Constructor
        public Section() { }
        // Overloaded Constructor
        // Will return object instatiated from active row returned
        // from data base fitlered by unique identifier
        /**************** Changed userID to sectId **** Different from properties sectID ****/
        public Section(int sectId)
        {
            DataTable dt = new DataTable();
            dt = GetSectionById(sectId);
            if (dt.Rows.Count > 0)
            {
                this.sectID = Convert.ToInt32(dt.Rows[0]["sect_id"].ToString());
                this.sectName = dt.Rows[0]["sect_name"].ToString();
                this.sectDesc = dt.Rows[0]["sect_desc"].ToString();
                this.sectActive = Convert.ToBoolean(dt.Rows[0]["sect_active"].ToString());
            }
        }
        #endregion

        #region methods
        //Get
        private static DataTable GetSectionById(int id)
        {
            //This example will use embedded SQL
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            //connection object
            SqlCommand cmd = new SqlCommand("sections_getbyid", cn);
            //Create datatable to hold result set
            DataTable dt = new DataTable();
            // Mark the Command as  text type
            //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@sect_id", SqlDbType.Int).Value = id;
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
        public static bool InsertSection(Section it)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sections_insert", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@sect_name", SqlDbType.VarChar).Value = it.sectName;
            cmd.Parameters.Add("@sect_desc", SqlDbType.VarChar).Value = it.sectDesc;
            cmd.Parameters.Add("@sect_active", SqlDbType.Bit).Value = it.sectActive;

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

        public static bool UpdateSection(Section us)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sections_update", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@sect_id", SqlDbType.Int).Value = us.sectID;
            cmd.Parameters.Add("@sect_name", SqlDbType.VarChar).Value = us.sectName;
            cmd.Parameters.Add("@sect_desc", SqlDbType.VarChar).Value = us.sectDesc;
            cmd.Parameters.Add("@sect_active", SqlDbType.Bit).Value = us.sectActive;

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