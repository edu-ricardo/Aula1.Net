using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App1.Negocio;

namespace App1.ConsoleApp {
    class Program {
        static void Main(string[] args) {
            Produto p1 = new Produto(1, "Notebook i7 8Gb 1Tb", 1200.20m, 2.220f);
            Produto p2 = new Produto(2, "Televisão de 42 polegadas", 200.00m, 15.075f);

            Cliente c1 = new Cliente {
                Codigo = 1,
                Nome = "João",
                Telefone = "(11)99999-9999"
            };

            Cliente c2 = new Cliente {
                Codigo = 2,
                Nome = "Maria",
                Telefone = "(11)88888-8888"
            };

            Venda v1 = new Venda();
            v1.Cliente = c1;
            v1.Produtos.Add(new Item { Produto= p1, Qtde = 1 });

            Venda v2 = new Venda();
            v2.Cliente = c2;
            v2.Produtos.Add(new Item { Produto = p2, Qtde = 2 });

            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(v1.VerDadosVenda());
            Console.WriteLine();
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine(v2.VerDadosVenda());

            Console.ReadKey();
        }
    }
}
