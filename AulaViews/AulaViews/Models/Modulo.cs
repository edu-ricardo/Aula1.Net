using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AulaViews.Models {
    public class Modulo {
        public int Codigo { get; set; }
        public string Titulo { get; set; }
        public List<Atividade> Atividades { get; set; }
    }
}