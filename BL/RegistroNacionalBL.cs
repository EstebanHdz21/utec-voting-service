using DAL;
using EN;
using System;
using System.Collections.Generic;
using System.Text;

namespace BL
{
    public class RegistroNacionalBL
    {

        public List<RegistroNacional> getAll() {
            RegistroNacionalDAL registroNacional = new RegistroNacionalDAL();
            List<RegistroNacional> dto = registroNacional.getAll();
            return dto;
        }

    }
}
