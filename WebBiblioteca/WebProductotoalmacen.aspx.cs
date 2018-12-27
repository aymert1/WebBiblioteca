using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebProductotoalmacen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string codProd = Request.QueryString["codprod"];
            dsVentasTableAdapters.productoTableAdapter adaptadorproducto = new dsVentasTableAdapters.productoTableAdapter();
            dsVentas dsproducto = new dsVentas();
            adaptadorproducto.FillByCodigoProducto(dsproducto.producto, codProd);
            txtDescripcion.Text = dsproducto.producto[0].descripcion;
            txtStock.Text = dsproducto.producto[0].stock;
            dsVentasTableAdapters.almacenTableAdapter adaptadoralmacen = new dsVentasTableAdapters.almacenTableAdapter();
            dsVentas dsalmacen = new dsVentas();
            adaptadoralmacen.Fill(dsalmacen.almacen);
            
            int tamaño=dsalmacen.almacen.Rows.Count;
            for (int i = 0; i < tamaño; i++)
            {
                
            }
            
        }
    }
}