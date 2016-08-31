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
        public User()
        {
            // Constructor logic goes here
        }

        public static DataTable Login(string username, 
            string password)
        {
            // Create SQL connection object
            // get connection string from web.config
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["se256_arsenaultiConnectionString"].ConnectionString);

            // Create SQL Command
            // type as stored procedure
            // Give stored procedure name
            SqlCommand cmd = new SqlCommand("spUserLogin", cn);

            // Mark the SQL Command as a Stored Procedure
            cmd.CommandType = CommandType.StoredProcedure;

            // Add Parameters to Stored Procedure                 ~~~~~~~ NOT SURE IF USER_EMAIL SHOULD BE @UserName  ????????????????????????
            SqlParameter pUsername = new SqlParameter("@user_email", SqlDbType.VarChar, 50);
            pUsername.Value = username;
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