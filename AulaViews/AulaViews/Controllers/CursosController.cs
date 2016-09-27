using AulaViews.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AulaViews.Controllers
{
    public class CursosController : Controller
    {

        public List<Curso> GetAllCursos() {
            List<Modulo> Lmdl1 = new List<Modulo>();
            List<Modulo> Lmdl2 = new List<Modulo>();
            List<Modulo> Lmdl3 = new List<Modulo>();

            Lmdl1.Add(new Modulo {
                Titulo = "Programação",
                Codigo = 1
            });

            Lmdl1.Add(new Modulo {
                Codigo = 2,
                Titulo = "Redes"
            });

            Lmdl1.Add(new Modulo {
                Codigo = 3,
                Titulo = "Hardware"
            });

            Lmdl2.Add(new Modulo {
                Codigo = 1,
                Titulo = "Desenho"
            });

            Lmdl2.Add(new Modulo {
                Codigo = 2,
                Titulo = "Cinema"
            });

            Lmdl2.Add(new Modulo {
                Codigo = 3,
                Titulo = "Pintura"
            });

            Lmdl3.Add(new Modulo {
                Codigo = 1,
                Titulo = "Fisica"
            });

            Lmdl3.Add(new Modulo {
                Codigo = 2,
                Titulo = "Quimica"
            });

            Lmdl3.Add(new Modulo {
                Codigo = 3,
                Titulo = "Biologia"
            });



            List<Curso> Lcursos = new List<Curso>();


            Lcursos.Add(new Curso {
                Codigo = 1,
                Titulo = "Informatica",
                Descricao = "Curso de Informatica",
                Modulos = Lmdl1
            });

            Lcursos.Add(new Curso {
                Codigo = 2,
                Titulo = "Artes",
                Descricao = "Curso de Artes",
                Modulos = Lmdl2
            });

            Lcursos.Add(new Curso {
                Codigo = 3,
                Titulo = "Ciências da Natureza",
                Descricao = "Curso de Ciências da Natureza",
                Modulos = Lmdl3
            });

            return Lcursos;
        }

        // GET: Home
        public ActionResult Index() {
            return View(GetAllCursos());
        }

        public ActionResult Detalhes(int Id) {
            return View(GetAllCursos().Find(x => x.Codigo == Id));
        }
    }
}