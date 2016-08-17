using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1.Negocio {
    public class Cliente {
        public int Codigo { get; set; }
        public String Nome { get; set; }
        public String Telefone { get; set; }
        public Endereco End { get; set; }
    }
}
