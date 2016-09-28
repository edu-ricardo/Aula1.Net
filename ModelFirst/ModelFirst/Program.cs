using ModelFirst.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelFirst {
    class Program {
        static void Main(string[] args) {
            EscolaOnlineContainer context = new EscolaOnlineContainer();

            Curso c1 = new Curso();
            c1.Titulo = "Introdução ao ASP.Net";
            c1.Descricao = "Curso introdutório";

            Modulo m1 = new Modulo() {
                Titulo = "Apresentação",
                Descricao = "------------------"
            };

            Modulo m2 = new Modulo() {
                Titulo = "Tecnologias",
                Descricao = "____________"
            };

            c1.Moduloes.Add(m1);
            c1.Moduloes.Add(m2);

            context.Cursos.Add(c1);
            context.SaveChanges();

            Console.Write(c1.Id);
            Console.ReadKey();
        }
    }
}
