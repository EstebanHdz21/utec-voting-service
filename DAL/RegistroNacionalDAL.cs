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
                Console.WriteLine("cargando datos");
                conn = new Connection().getConnection();
                SqlCommand command = new SqlCommand("get_registroNacional", conn);
                command.Parameters.Add(new SqlParameter("@Id", 3));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader reader = command.ExecuteReader();

               RegistroNacional registroNaciona  = new  RegistroNacional();
                while (reader.Read())
                {
                    var dato1 = reader[0];
                    var dato2 = reader[1];
                    var dato3 = reader[2];
                    var dato4 = reader[3];
                    Console.WriteLine(String.Format("{0}", reader[0]));
                }



            }
            catch (Exception e){
                Console.WriteLine("Error al consultar procedimiento_almacenado");
                Console.WriteLine(e.Message);
                _ = e.StackTrace;
            }
            finally {
                conn.Close(); 
            }
            return registroNacional;
        }

    }
}
