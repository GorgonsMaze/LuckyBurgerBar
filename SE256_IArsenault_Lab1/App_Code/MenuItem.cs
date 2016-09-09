using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

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
        public decimal itemPrice { get; set; }
        public bool itemGlutFree { get; set; }
        public bool itemActive { get; set; }
        #endregion

        #region constructors
        //Default Constructor
        public MenuItem() { }
        //Overloaded constructor
        public MenuItem(int id)
        {
            //Creating a new instance of a datatable
            DataTable dt = new DataTable();
            //setting datatable equal to the function GetReservationByID
            dt = GetMenuItemById(id);
            //If the rows count is greater than zero -- set the properties equal to whats in those columns
            if (dt.Rows.Count > 0)
            {
                this.itemID = Convert.ToInt32(dt.Rows[0]["item_id"].ToString());
                this.menuID = Convert.ToInt32(dt.Rows[0]["menu_id"].ToString());
                this.catID = Convert.ToInt32(dt.Rows[0]["cat_id"].ToString());
                this.itemName = dt.Rows[0]["item_name"].ToString();
                this.itemDesc = dt.Rows[0]["item_desc"].ToString();
                this.itemAllergens = dt.Rows[0]["item_allergens"].ToString();
                this.itemPrice = Convert.ToDecimal(dt.Rows[0]["item_price"].ToString());
                this.itemGlutFree = Convert.ToBoolean(dt.Rows[0]["item_gluten_free"].ToString());
                this.itemActive = Convert.ToBoolean(dt.Rows[0]["item_active"].ToString());
            }
        }
        #endregion

        #region methods
        //Get
        private static DataTable GetMenuItemById(int id)
        {
            //This example will use embedded SQL
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            //connection object
            SqlCommand cmd = new SqlCommand("menu_items_getbyid", cn);
            //Create datatable to hold result set
            DataTable dt = new DataTable();
            // Mark the Command as  text type
            //command type is an enumeration: Stored procedure, text(embedded SQL) or table direct
            cmd.CommandType = CommandType.StoredProcedure;
            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@item_id", SqlDbType.Int).Value = id;
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
        public static bool InsertMenuItem(MenuItem im)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("menu_items_insert", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@menu_id", SqlDbType.Int).Value = im.menuID;
            cmd.Parameters.Add("@cat_id", SqlDbType.Int).Value = im.catID;
            cmd.Parameters.Add("@item_name", SqlDbType.VarChar).Value = im.itemName;
            cmd.Parameters.Add("@item_desc", SqlDbType.VarChar).Value = im.itemDesc;
            cmd.Parameters.Add("@item_allergens", SqlDbType.VarChar).Value = im.itemAllergens;
            cmd.Parameters.Add("@item_price", SqlDbType.Decimal).Value = im.itemPrice;
            cmd.Parameters.Add("@item_gluten_free", SqlDbType.Bit).Value = im.itemGlutFree;
            cmd.Parameters.Add("@item_active", SqlDbType.Bit).Value = im.itemActive;

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
        public static bool UpdateMenuItem(MenuItem um)
        {
            //declare return variable
            bool blnSuccess = false;
            //back to stored procedures :)
            //connection object - ConfigurationManager namespace allows for runtime 
            //access to web.config setting, specifically connection strings and key values
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SE256_ArsenaultICS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("menu_items_update", cn);
            // Mark the Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure
            cmd.Parameters.Add("@item_id", SqlDbType.Int).Value = um.itemID;
            cmd.Parameters.Add("@menu_id", SqlDbType.Int).Value = um.menuID;
            cmd.Parameters.Add("@cat_id", SqlDbType.Int).Value = um.catID;
            cmd.Parameters.Add("@item_name", SqlDbType.VarChar).Value = um.itemName;
            cmd.Parameters.Add("@item_desc", SqlDbType.VarChar).Value = um.itemDesc;
            cmd.Parameters.Add("@item_allergens", SqlDbType.VarChar).Value = um.itemAllergens;
            cmd.Parameters.Add("@item_price", SqlDbType.Decimal).Value = um.itemPrice;
            cmd.Parameters.Add("@item_gluten_free", SqlDbType.Bit).Value = um.itemGlutFree;
            cmd.Parameters.Add("@item_active", SqlDbType.Bit).Value = um.itemActive;

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
