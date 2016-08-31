using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcTesteAulaControllers.Models {
    public class Produto {
        public int Codigo { get; set; }
        public string Desc { get; set; }
        public decimal Valor { get; set; }
    }
}