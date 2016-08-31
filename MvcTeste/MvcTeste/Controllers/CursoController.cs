using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTeste.Controllers
{
    public class CursoController : Controller
    {
        // GET: Curso
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Todos() {
            return View();
        }

        public ActionResult MaisProcurados() {
            return View();
        }

        public ActionResult Autores() {
            return View();
        }

        public ActionResult Autores(int IdAutor) {
            return View();
        }
    }
}