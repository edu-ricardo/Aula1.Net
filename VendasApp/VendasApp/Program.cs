using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VendasApp {
    class Program {
        static void Main(string[] args) {
            VendasModelContainer context = new VendasModelContainer();

            Telefone t1 = new Telefone() {
                Ddd = "11",
                Numero = "987408194"
            };

            Telefone t2 = new Telefone() {
                Ddd = "11",
                Numero = "28927438"
            };

            Cliente Edu = new Cliente() {
                Nome = "Eduardo"
            };

            Edu.Telefones.Add(t1);
            Edu.Telefones.Add(t2);

            Venda V = new Venda() {
                Data = DateTime.Now
            };

            Edu.Vendas.Add(V);
            // git config --global http.proxy http://SP146650X:15326164@10.100.2.253:3128
            context.Clientes.Add(Edu);
            context.SaveChanges();
        }
    }
}
