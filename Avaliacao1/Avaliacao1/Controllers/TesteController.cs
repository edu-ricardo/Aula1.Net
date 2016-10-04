using Avaliacao1.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Avaliacao1.Controllers
{
    public class TesteController : Controller
    {
        // GET: Teste
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TestePartial() {
            return View();
        }

        public PartialViewResult TestePartialView() {
            return PartialView();
        }
        
        public ActionResult Acao1() {
            return Content("Avaliação 1", "text/plain");
        }

        public ActionResult Acao2() {
            return Content("<texto>Hello World!</texto>", "application/xml");
        }

        public ActionResult Acao3() {
            return Content("{ \"texto\": \"Hello World!\" }", "application/json");
        }

        public ActionResult VerArquivo() {
            var appData = Server.MapPath("~/files");
            var path = Path.Combine(appData, "ctrl_aula.pdf");
            return File(path, "aplication/pdf");
        }

        public ActionResult Detalhe() {
            Cliente c1 = new Cliente() {
                Codigo= 1,
                Nome = "Eduardo",
                Email = "edu@edu.edu",
                Telefone = "6666-6666"
            };

            ViewBag.Codigo = c1.Codigo;
            ViewBag.Nome = c1.Nome;
            ViewBag.Email = c1.Email;
            ViewBag.Telefone = c1.Telefone;
            return View();
        }


        public ActionResult VerTodos() {
            Cliente c1 = new Cliente() {
                Codigo = 1,
                Nome = "Eduardo",
                Email = "edu@edu.edu",
                Telefone = "6666-6666"
            };

            Cliente c2 = new Cliente() {
                Codigo = 2,
                Nome = "Anthony",
                Email = "tony@avengers.com",
                Telefone = "1 - 123-555"
            };

            Cliente c3 = new Cliente() {
                Codigo = 3,
                Nome = "Carol",
                Email = "carol@corps.com",
                Telefone = "1 - 777-777"
            };

            List<Cliente> lstClientes = new List<Cliente>();
            lstClientes.Add(c1);
            lstClientes.Add(c2);
            lstClientes.Add(c3);

            ViewBag.Codigo = c1.Codigo;
            ViewBag.Nome = c1.Nome;
            ViewBag.Email = c1.Email;
            ViewBag.Telefone = c1.Telefone;
            return View(lstClientes);
        }

    }
}