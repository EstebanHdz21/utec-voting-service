using DAL;
using EN;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace BL
{
    public class RegistroNacionalDAL
    {

        SqlConnection conn = null;
        public List<RegistroNacional> getAll() {
            List< RegistroNacional> registroNacional = null;
            try{
                conn = new Connection().getConnection();
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = conn;
                SqlCmd.CommandText = "get_registroNacional";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                Console.WriteLine("get_registroNacional");
            }
            catch (Exception e){
                Console.WriteLine(e.Message);
            }
            finally {
                conn.Close(); 
            }
            return registroNacional;
        }

    }
}
