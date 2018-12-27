using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string user = txtUser.Text;
            string contraseña = txtContraseña.Text;
            dsVentasTableAdapters.empleadoTableAdapter adaptadorempleado = new dsVentasTableAdapters.empleadoTableAdapter();
            dsVentas dsempleado = new dsVentas();
            adaptadorempleado.FillByuserandpassword(dsempleado.empleado, user, contraseña);
            if (dsempleado.empleado.Rows.Count == 0) 
            {
                lblMensaje.Text = "Usuario o contraseña incorrectos";

            }
            else
            {
                lblMensaje.Text = "Usuario Correcto, accediendo al sistema....";
                Session["Username"] = txtUser.Text;
                Session["passwd"] = txtContraseña.Text;
                Session["carrito"] = null;
                Response.Redirect("WebInicio.aspx");

            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebEmpleado.aspx");
        }

       
    }
}