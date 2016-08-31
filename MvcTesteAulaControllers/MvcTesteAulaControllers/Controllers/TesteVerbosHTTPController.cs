using MvcTesteAulaControllers.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTesteAulaControllers.Controllers
{
    public class TesteVerbosHTTPController : Controller
    {
        // GET: TesteVerbosHTTP
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult TesteGet() {
            return View();
        }

        [HttpPost]
        public ActionResult TestePost(Produto p) {
            return Json(p);
        }

        [HttpHead]
        public ActionResult TesteHead() {
            return Content("Olá Mundo!");
        }

        [HttpOptions]
        public ActionResult TesteOptions() {
            return Content("Olá Mundo 2!");
        }

    }
}