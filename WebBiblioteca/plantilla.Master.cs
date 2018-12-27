using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class plantilla : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                string usuario = Session["Username"].ToString();
                lblcodigoempleado.Text = usuario;
                dsVentasTableAdapters.empleadoTableAdapter adaptadorempleado = new dsVentasTableAdapters.empleadoTableAdapter();
                dsVentas dsempleado = new dsVentas();
                adaptadorempleado.FillByidempleado(dsempleado.empleado, Session["Username"].ToString());
                lblNombreEmpleado.Text = dsempleado.empleado[0].nom_empl+" "+dsempleado.empleado[0].Nombre;
                lblDniEmpleado.Text = dsempleado.empleado[0].DNI_empl;
            }
        }

    
        protected void btnDesconectarse_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["passwd"] = null;
            Response.Redirect("WebLogin.aspx");
        }

        protected void btnConfigurar_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebConfiguracionEmpleado.aspx");
        }
    }
}