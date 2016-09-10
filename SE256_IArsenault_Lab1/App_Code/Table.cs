using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SE256_IArsenault_Lab1.App_Code
{
    public class Table
    {
        #region properties
        public int tblID { get; set; }
        public int sectID { get; set; }
        public string tblName { get; set; }
        public string tblDesc { get; set; }
        public int tblSeatCnt { get; set; }
        public bool tblActive { get; set; }
        #endregion

        #region constructors
        // Default Constructor
        public Table() { }

        // Overloaded Constructor
        // Will return object instatiated from active row returned
        // from data base fitlered by unique identifier
        public Table(int id)
        {
            //Creating a new instance of a datatable
            DataTable dt = new DataTable();
            //setting datatable equal to the function GetReservationByID
            dt = GetTableById(id);
            //If the rows count is greater than zero -- set the properties equal to whats in those columns
            if (dt.Rows.Count > 0)
            {
                this.tblID = Convert.ToInt32(dt.Rows[0]["tbl_id"].ToString());
                this.sectID = Convert.ToInt32(dt.Rows[0]["sect_id"].ToString());
                this.tblName = dt.Rows[0]["tbl_name"].ToString();
                this.tblDesc = dt.Rows[0]["tbl_desc"].ToString();
                this.tblSeatCnt = Convert.ToInt32(dt.Rows[0]["tbl_seat_cnt"].ToString());
                this.tblActive = Convert.ToBoolean(dt.Rows[0]["tbl_active"].ToString());
            }
        }
        #endregion

        #region methods
        // Get
        private static DataTable GetTableById(int id)
        {
            //This example will use embedded SQL
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                           ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            //connection object
            SqlCommand cmd = new SqlCommand("tables_getbyid", cn);
            //Create datatable to hold result set
            DataTable dt = new DataTable();
            // Mark the Command as  text type
            //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@tbl_id", SqlDbType.Int).Value = id;

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
        public static bool InsertTable(Table table)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("tables_insert", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@sect_id", SqlDbType.Int).Value = table.sectID; 
            cmd.Parameters.Add("@tbl_name", SqlDbType.VarChar).Value = table.tblName;
            cmd.Parameters.Add("@tbl_desc", SqlDbType.VarChar).Value = table.tblDesc;
            cmd.Parameters.Add("@tbl_seat_cnt", SqlDbType.Int).Value = table.tblSeatCnt;
            cmd.Parameters.Add("@tbl_active", SqlDbType.Bit).Value = table.tblActive;

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
        public static bool UpdateTable(Table table)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("tables_update", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@tbl_id", SqlDbType.Int).Value = table.tblID;
            cmd.Parameters.Add("@sect_id", SqlDbType.Int).Value = table.sectID;
            cmd.Parameters.Add("@tbl_name", SqlDbType.VarChar).Value = table.tblName;
            cmd.Parameters.Add("@tbl_desc", SqlDbType.VarChar).Value = table.tblDesc;
            cmd.Parameters.Add("@tbl_seat_cnt", SqlDbType.Int).Value = table.tblSeatCnt;
            cmd.Parameters.Add("@tbl_active", SqlDbType.Bit).Value = table.tblActive;
    
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


