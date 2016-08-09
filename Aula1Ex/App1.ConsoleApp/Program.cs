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
            v1.Produto = p1;

            Venda v2 = new Venda();
            v2.Cliente = c2;
            v2.Produto = p2;

            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine("O cliente "+v1.Cliente.Nome+" comprou um "+v1.Produto.Descricao + " pelo valor de R$ "+ String.Format("{0:##.##}", v1.Produto.Valor) + ", pagando de frete "+ String.Format("{0:##.##}", v1.ValorFrete) + ", totalizando R$ " +String.Format("{0:##.##}", v1.ValorTotal));
            Console.WriteLine();
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine("O cliente " + v2.Cliente.Nome + " comprou um " + v2.Produto.Descricao + " pelo valor de R$ " + String.Format("{0:#,###.##}", v2.Produto.Valor) + ", pagando de frete " + String.Format("{0:#,###.##}", v2.ValorFrete) + ", totalizando R$ " + String.Format("{0:#,###.##}", v2.ValorTotal));

            Console.ReadKey();
        }
    }
}
