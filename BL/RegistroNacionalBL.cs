using DAL;
using EN;
using System;
using System.Collections.Generic;
using System.Text;

namespace BL
{
    public class RegistroNacionalBL
    {

        public RegistroNacional getAll() {
            RegistroNacionalBL registroNacional = new RegistroNacionalBL();
            RegistroNacional dto = registroNacional.getAll();
            return dto;
        }




    }
}
