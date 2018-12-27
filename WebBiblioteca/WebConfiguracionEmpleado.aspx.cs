using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebConfiguracionEmpleado : System.Web.UI.Page
    {
        private string cadenaconexion = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["VentasConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            txtUser.Text = Session["Username"].ToString();
            dsVentasTableAdapters.empleadoTableAdapter adaptadorempleado = new dsVentasTableAdapters.empleadoTableAdapter();
            dsVentas dsempleado = new dsVentas();
            
            
            adaptadorempleado.FillByidempleado(dsempleado.empleado, txtUser.Text);
            
            txtNombreEmpleado.Text = dsempleado.empleado[0].nom_empl.ToString().Replace(" ","");
            txtApellidoEmpleado.Text = dsempleado.empleado[0].Nombre.ToString().Replace(" ","");
            txtDireccionEmpleado.Text = dsempleado.empleado[0].dir_empl.ToString().Replace(" ", "");
            txtTelefonoEmpleado.Text = dsempleado.empleado[0].telef_empl.ToString().Replace(" ", "");
            txtDniEmpleado.Text = dsempleado.empleado[0].DNI_empl.ToString().Replace(" ", "");
            
            
            
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
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
                    if (contraseñaEmpleado != "" && nombreEmpleado != "" && apellidoEmpleado != "" && dniEmpleado != "")
                    {

                        dsVentasTableAdapters.empleadoTableAdapter adaptadorempleado = new dsVentasTableAdapters.empleadoTableAdapter();
                        dsVentas dsempleado = new dsVentas();
                        adaptadorempleado.FillByidempleado(dsempleado.empleado, txtUser.Text);
                        string SQLModificar;
                        SQLModificar = "update empleado set nom_empl='" + nombreEmpleado + "',apell_empl='" + apellidoEmpleado + "',dir_empl='" + direccionEmpleado + "',telef_empl='" + telefonoEmpleado + "',Dni_empl='" + dniEmpleado + "',contra_empl='" + contraseñaEmpleado +  "' where id_empl='" + codUser + "'";
                        SqlConnection oCon = new SqlConnection(cadenaconexion);
                        SqlCommand cmd = new SqlCommand(SQLModificar, oCon);
                        try
                        {
                            oCon.Open();
                            int modificados = cmd.ExecuteNonQuery();
                            lblMensaje.Text = "Datos actualizados";
                        }
                        catch (Exception m)
                        {
                            lblMensaje.Text = "error al modificar..." + m.Message;
                        }
                        finally
                        {
                            oCon.Close();
                        }

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
            Response.Redirect("WebInicio.aspx");
        }   
    }
}