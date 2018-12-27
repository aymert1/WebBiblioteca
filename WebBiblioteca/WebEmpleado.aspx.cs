using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            if (txtContraseña.Text != txtRepetirContraseña.Text)
            {
                lblMensaje.Text = "Las Contraseñas no coinciden";
            }
            else
            {
                string codUser = txtUser.Text;
                string nombreEmpleado = txtNombreEmpleado.Text;
                string apellidoEmpleado = txtApellidoEmpleado.Text;
                string direccionEmpleado = txtDireccionEmpleado.Text;
                string telefonoEmpleado = txtTelefonoEmpleado.Text;
                string dniEmpleado = txtDniEmpleado.Text;
                string contraseñaEmpleado = txtContraseña.Text;
                try
                {
                    if (contraseñaEmpleado != "" && nombreEmpleado!="" && apellidoEmpleado!="" && dniEmpleado!="")
                    {

                        dsVentasTableAdapters.empleadoTableAdapter adaptadorempleado = new dsVentasTableAdapters.empleadoTableAdapter();
                        dsVentas dsempleado = new dsVentas();
                        dsempleado.empleado.AddempleadoRow(txtUser.Text, txtNombreEmpleado.Text, txtApellidoEmpleado.Text, txtDireccionEmpleado.Text, txtTelefonoEmpleado.Text, txtDniEmpleado.Text, txtContraseña.Text);
                        lblMensaje.Text = "Se ha Registrado Correctamente";
                        adaptadorempleado.Update(dsempleado);
                        btnRegresar.Visible = true;
                        txtUser.Text = "";
                        txtNombreEmpleado.Text = "";
                        txtApellidoEmpleado.Text = "";
                        txtDireccionEmpleado.Text = "";
                        txtDniEmpleado.Text = "";
                        txtTelefonoEmpleado.Text = "";
                        
                    }
                    else
                    {
                        lblMensaje.Text = "rellene los campos necesarios";
                    }

                }
                catch (Exception m)
                {
                    lblMensaje.Text = m.Message;
                }

            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebLogin.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebLogin.aspx");
        }
    }
}