using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebAddProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                dsVentasTableAdapters.productoTableAdapter adaptadorproducto = new dsVentasTableAdapters.productoTableAdapter();
                dsVentas dsProducto = new dsVentas();
                dsProducto.producto.AddproductoRow(txtCodProd.Text, txtStock.Text, txtDescripcion.Text, DropDownList1.SelectedValue, txtPrecioAnterior.Text, txtPrecioActual.Text);
                adaptadorproducto.Update(dsProducto);
                lblMensaje.Text = "Producto ingresado correctamente";
            }
            catch (Exception m)
            {
                lblMensaje.Text = m.Message;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebProducto.aspx");
        }
    }
}