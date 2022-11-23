using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ConexionSqlServer
{
    class ClElementosConexionBdSqlServer
    {
        string ConexionString= ConfigurationManager.ConnectionStrings["ConexionExamen2"].ConnectionString;
        //----------------------------------------------------------
        SqlCommand Comando;
        SqlConnection Conexion;
        SqlDataReader LectorDatosBd;
        SqlDataAdapter AdaptadorDatos=new SqlDataAdapter();
        DataTable TablaDatos = new DataTable();
        DataTable TablaDatos2 = new DataTable();
        DataTable TablaDatos3 = new DataTable();
        //-----------------------------------------------------------
        string Estado = "";
        //El Metodo Seleccionar sirve para ejecutar cualquier sentencia SQL que sea SELECT
        public DataTable SeleccionarBd(string Sentencia)
        {
            try
            {
                TablaDatos.Clear();
                TablaDatos.Columns.Clear();
                Conexion = new SqlConnection(ConexionString);
                Conexion.Open();
                Comando = new SqlCommand(Sentencia, Conexion);
                Comando.CommandType = CommandType.Text;
                AdaptadorDatos.SelectCommand = Comando;
                AdaptadorDatos.Fill(TablaDatos);
                Conexion.Close();
            }
            catch (Exception e)
            {
                Conexion.Close();
            }
            return TablaDatos.Copy();
        }
        //El Metodo InsertatBd permite ejecutar cualquier Sentencia SQL que sea INSERT, DELETE, UPDATE
        public string InsertarDatos(string Sentencia)
        {
            try
            {
                Conexion = new SqlConnection(ConexionString);
                Conexion.Open(); 
                Comando = new SqlCommand(Sentencia, Conexion);
                Comando.CommandType = CommandType.Text;                    
                Comando.ExecuteNonQuery();
                Conexion.Close();
                Estado = "Se ha guardado satisfactoriamente";
            }
            catch (Exception error)
            {
                Conexion.Close();
                Estado = error.ToString();
            }

            return Estado;
        }

        #region Metodo Comentado No Generico

        //El Metodo InsertatBd permite ejecutar cualquier Sentencia SQL que sea INSERT, DELETE, UPDATE

        //public string InsertarDatosNoGenerico(string Nombre,string Apellidos,string Telefono)
        //{
        //    try
        //    {
        //        Conexion = new SqlConnection(ObjetoConexion.ConexionSqlServer());
        //        Conexion.Open();
        //        Comando = new SqlCommand("GuardarDatos",Conexion);
        //        Comando.CommandType = CommandType.StoredProcedure;
        //        Comando.Parameters.AddWithValue("@Nombre", Nombre);
        //        Comando.Parameters.AddWithValue("@Apellidos", Apellidos);
        //        Comando.Parameters.AddWithValue("@Telefono", Telefono);
        //        Comando.ExecuteNonQuery();
        //        Conexion.Close();
        //        Estado = "Se ha guardado satisfactoriamente";
        //    }
        //    catch (Exception error)
        //    {
        //        Conexion.Close();
        //        Estado = error.ToString();
        //    }

        //    return Estado;
        //}

        #endregion
    }
}