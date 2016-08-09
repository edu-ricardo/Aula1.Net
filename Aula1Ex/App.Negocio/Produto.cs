using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App1.Negocio {
    public class Produto {
        public int Codigo { get; set; }
        public String Descricao { get; set; }
        public decimal Valor { get; set; }
        public float Peso { get; set; }

        public Produto() { }

        public Produto(int Codigo) : this() {
            this.Codigo = Codigo;
        }

        public Produto(int Codigo, String Descricao):this(Codigo){
            this.Descricao = Descricao;
        }

        public Produto(int Codigo, String Descricao, decimal Valor) : this(Codigo, Descricao) {
            this.Valor = Valor;
        }

        public Produto(int Codigo, String Descricao, decimal Valor, float Peso) : this(Codigo, Descricao, Valor) {
            this.Peso = Peso;
        }
    }
}
