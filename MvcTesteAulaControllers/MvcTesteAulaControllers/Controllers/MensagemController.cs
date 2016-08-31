using MvcTesteAulaControllers.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTesteAulaControllers.Controllers
{
    public class MensagemController : Controller
    {
        // GET: Mensagem
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Enviar() {
            return Content("Formulário de Mensagem", "text, plain");
        }

        [HttpPost]
        public ActionResult Enviar(Mensagem msg) {                       
            return Json(msg);
        }

        public ActionResult VerArquivo() {
            var appData = Server.MapPath("~/App_Data");
            var path = Path.Combine(appData, "teste.pdf");
            return File("", "aplication/pdf");
        }


    }
}