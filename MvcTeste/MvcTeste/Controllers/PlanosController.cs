using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTeste.Controllers
{
    public class PlanosController : Controller
    {
        // GET: Planos
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Individuo() {
            return View();
        }

        public ActionResult ParaEmpresas() {
            return View();
        }
    }
}