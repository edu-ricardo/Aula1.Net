using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AulaViews.Models {
    public class Curso {
        public int Codigo { get; set; }
        public string Titulo { get; set; }
        public string Descricao { get; set; }
        public List<Modulo> Modulos { get; set; }

        public Curso() {
            Modulos = new List<Modulo>();
        }

    }
}