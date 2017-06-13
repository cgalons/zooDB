using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZooApp
{
    public class Especie
    {
        public long idEspecie { get; set; }
        public string nombre { get; set; }
        public int nPatas { get; set; }
        public bool esMascotas { get; set; }
        public Clasificacion clasificacion { get; set; }
        public TipoAnimal tipoAnimal { get; set; }

    }
}