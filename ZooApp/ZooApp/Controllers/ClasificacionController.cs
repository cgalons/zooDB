using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ZooApp.Controllers
{
    public class ClasificacionController : ApiController
    {
        // GET: api/Clasificacion
        public RespuestaAPI Get()
        {
            RespuestaAPI respuesta = new RespuestaAPI();
            List<Clasificacion> dataClasificacion = new List<Clasificacion>();
            try
            {
                Db.Conectar();
                if (Db.EstaLaConexionAbierta())
                {
                    dataClasificacion = Db.GetTablaClasificaciones();
                }
                respuesta.error = "";
                Db.Desconectar();
            }
            catch
            {
                respuesta.totalElementos = 0;
                respuesta.error = "Se produjo un error";
            }

            respuesta.totalElementos = dataClasificacion.Count;
            respuesta.dataClasificacion = dataClasificacion;
            return respuesta;
        }
//-------------------------------------------------------------------------------------------------------------------

        // GET: api/Clasificacion/5
        public RespuestaAPI Get(long id)
        {
            RespuestaAPI resultado = new RespuestaAPI();
            List<Clasificacion> listaClasificacion = new List<Clasificacion>();
            try
            {
                Db.Conectar();

                if (Db.EstaLaConexionAbierta())
                {
                    listaClasificacion = Db.GetClasificacionPorId(id);
                }
                resultado.error = "";
                Db.Desconectar();
            }
            catch
            {
                resultado.error = "Se produjo un error";
            }

            resultado.totalElementos = listaClasificacion.Count;
            resultado.dataClasificacion = listaClasificacion;
            return resultado;
        }
//-------------------------------------------------------------------------------------------------------------------------------
        // POST: api/Clasificacion
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Clasificacion/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Clasificacion/5
        public void Delete(int id)
        {
        }
    }
}
