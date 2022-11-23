using ConexionSqlServer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2Progra
{
    public partial class FrmVentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClElementosConexionBdSqlServer Conexion = new ClElementosConexionBdSqlServer();
            Conexion.InsertarDatos("insert into TbVenta(Cajero,Maquina,Producto) values("+Cajeros.SelectedValue+","+Maquina.SelectedValue+","+Productos.SelectedValue+")");
        }
    }
}