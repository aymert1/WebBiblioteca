using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            table1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            table1.Visible = true;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                dsVentasTableAdapters.proveedorTableAdapter adaptadorproveedor = new dsVentasTableAdapters.proveedorTableAdapter();
                dsVentas dsproveedor = new dsVentas();
                dsproveedor.proveedor.AddproveedorRow(txtIdProveedor.Text, txtNombreProveedor.Text, txtApellidoProveedor.Text, txtRazonSocial.Text, txtDniProve.Text);
                adaptadorproveedor.Update(dsproveedor);
                lblMensaje.Text = "Proveedor Ingresado correctamente";
            }
            catch (Exception m)
            {
                lblMensaje.Text = m.Message;
            }
        }
    }
}