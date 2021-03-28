using DAL;
using EN;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace BL
{
    class RegistroNacionalDAL
    {

        SqlConnection conn = new Connection().getConnection();
        public RegistroNacional getAll() {
            RegistroNacional registroNacional = null;
            try{

                SqlCommand command = new SqlCommand("Select * from registro_nacional", conn);
                command.Parameters.AddWithValue("@zip", "india");
                // int result = command.ExecuteNonQuery();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        Console.WriteLine(String.Format("{0}", reader["id"]));
                    }
                }

            }
            catch (Exception e){

            }
            finally {
                conn.Close(); 
            }
            return registroNacional;
        }

    }
}
