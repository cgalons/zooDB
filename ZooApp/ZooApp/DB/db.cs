using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace ZooApp
{
    public static class Db
    {
        private static SqlConnection conexion = null;

        public static void Conectar()
        {
            try
            {
                
                string cadenaConexion = @"Server=.\sqlexpress;
                                          Database=zooDB;
                                          User Id=testuser;
                                          Password=!Curso@2017;";

                
                conexion = new SqlConnection();
                conexion.ConnectionString = cadenaConexion;
                conexion.Open();

            }
            catch (Exception)
            {
                if (conexion != null)
                {
                    if (conexion.State != ConnectionState.Closed)
                    {
                        conexion.Close();
                    }
                    conexion.Dispose();
                    conexion = null;
                }
            }
            finally
            {
                
            }
        }

        public static bool EstaLaConexionAbierta()
        {
            return conexion.State == ConnectionState.Open;
        }

        public static void Desconectar()
        {
            if (conexion != null)
            {
                if (conexion.State != ConnectionState.Closed)
                {
                    conexion.Close();
                }
            }
        }
    }
}