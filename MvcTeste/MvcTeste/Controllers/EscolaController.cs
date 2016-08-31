using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTeste.Controllers
{
    public class EscolaController : Controller
    {
        // GET: Escola
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult NossaHistoria() {
            return View();
        }

        public ActionResult Instalacoes() {
            return View();
        }

        public ActionResult Docentes() {
            return View();
        }
    }
}