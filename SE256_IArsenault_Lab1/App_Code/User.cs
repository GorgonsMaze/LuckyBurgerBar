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
        public string userState { get; set}
        public string userZip { get; set; }
        public string userSalt { get; set; }
        public string userPwd { get; set; }
        public string userPhone { get; set; }
        public bool userActive { get; set; }
        #endregion

        #region constructors
        #endregion

        #region methods
        #endregion


        public User()
        {
            // Constructor logic goes here
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
    }

   
}