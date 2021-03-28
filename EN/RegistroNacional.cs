using System;
using System.Collections.Generic;
using System.Text;

namespace EN
{
    public class RegistroNacional
    {

   
        public int id { get; set; }
        public string nombre { get; set; }
        public string primer_apellido { get; set; }
        public string segundo_apellido { get; set; }

        public string numero_dui { get; set; }
        public string genero { get; set; }

        public string ocupacion { get; set; }

        public string nacionalidad { get; set; }

        public string direccion { get; set; }
    }
}
