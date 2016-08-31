using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTesteAulaControllers.Controllers
{
    public class TesteController : Controller
    {
        // GET: Teste
        public ActionResult Index()
        {
            return View();
        }

        public ViewResult Teste() {
            return View();
        }

        public PartialViewResult TestePartial() {
            return PartialView();
        }

        public ActionResult Acao1() {
            return Content("Ação 1", "text/plain");
        }

        public ActionResult Acao2() {
            return Content("<nome>Eduardo</nome>", "application/xml");
        }

        public ActionResult Acao3() {
            return Content("{\"id\": 1, \"nomes\": [ \"Eduardo\", \"Ricardo\", \"Florencio\", \"Silva\" ] }", "application/json");
        }
    }
}