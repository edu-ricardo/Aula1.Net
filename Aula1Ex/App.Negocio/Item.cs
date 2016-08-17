using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1.Negocio {
    public class Item {
        public Produto Produto { get; set; }
        public int Qtde { get; set; }

        public float SubTotal() {
            return this.Produto.Peso * this.Qtde;
        }
    }
}
