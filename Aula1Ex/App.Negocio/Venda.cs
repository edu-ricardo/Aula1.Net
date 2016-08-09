using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1.Negocio {
    
    public class Venda {
        public int Codigo { get; set; }
        public DateTime DataHora { get; set; }
        private decimal valorTotal;

        public decimal ValorTotal {
            get {
                return ValorFrete + Produto.Valor;
            }
            private set { valorTotal = value; }
        }

        private decimal valorFrete;

        public decimal ValorFrete {
            get {
                decimal r = 0;
                if (Produto.Peso >= 5) r = 20.00M;
                else if (Produto.Peso >= 3.00) r = 10.00M;
                else if (Produto.Peso >= 1.00) r = 5.00M;
                else r = 2.00M;
                return r;
            }
            private set { valorFrete = value; }
        }

        public Cliente Cliente { get; set; }
        public Produto Produto { get; set; }

        public Venda() {
            this.Codigo = 15;
            this.DataHora = DateTime.Now;
        }

        
    }
}
