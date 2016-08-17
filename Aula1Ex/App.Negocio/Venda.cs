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
                return ValorFrete + CalcValor();
            }
            private set { valorTotal = value; }
        }

        private decimal CalcValor() {
            decimal r = 0;
            foreach (Item item in Produtos) {
                r += (item.Qtde * item.Produto.Valor);
            }
            return r;
        }

        private decimal valorFrete;

        public decimal ValorFrete {
            get {               
                return CalcFrete();
            }
            private set { valorFrete = value; }
        }

        private decimal CalcFrete() {
            decimal r = 0;
            float Peso = 0;
            foreach (Item item in Produtos) {
                Peso += item.SubTotal();
            }

            if (Peso >= 5) r = 20.00M;
            else if (Peso >= 3.00) r = 10.00M;
            else if (Peso >= 1.00) r = 5.00M;
            else r = 2.00M;
            return r;
        }

        public Cliente Cliente { get; set; }
        public List<Item> Produtos { get; set; }

        public String VerDadosVenda() {
            String str;
            str = "O cliente " + Cliente.Nome + " comprou: \n";

            foreach (Item item in Produtos) {
                str += "Produto: " + item.Produto.Descricao + ", Quantidade: " + Convert.ToString(item.Qtde) + ", Preco: " + String.Format("{0:##.##}", item.Produto.Valor) +"\n";
            }
                
            str +="Pagando de frete " + String.Format("{0:##.##}", ValorFrete) + ", totalizando R$ " + String.Format("{0:##.##}", ValorTotal);

            return str;
        }

        public Venda() {
            this.Codigo = 15;
            this.DataHora = DateTime.Now;
            this.Produtos = new List<Item>();
        }

        
    }
}
