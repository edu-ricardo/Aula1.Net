using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTesteAulaControllers.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Sucesso() {
            return new HttpStatusCodeResult(200);
        }

        public ActionResult NaoAutorizado() {
            return new HttpStatusCodeResult(401);
        }

        public ActionResult NaoEncontrado() {
            return new HttpStatusCodeResult(404);
        }

        public ActionResult ErroInterno() {
            return new HttpStatusCodeResult(500);
        }

        [HttpPost]
        public ActionResult TesteArquivo() {
            HttpPostedFileBase arquivo = Request.Files["arquivo"];
            arquivo.SaveAs(Path.Combine(Server.MapPath("~/AppData"), Path.GetFileName(arquivo.FileName)));
            return Content("");
        }   
    }
}