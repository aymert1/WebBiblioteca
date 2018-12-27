using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebAlmacenProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCodAlmacen.Text = Request.QueryString["codAlmacen"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            txtCantidad.Text = "";
            dsVentasTableAdapters.productoTableAdapter adaptadorProducto = new dsVentasTableAdapters.productoTableAdapter();
            dsVentas dsProducto = new dsVentas();
            string descripcion = TextBox1.Text;
            adaptadorProducto.FillBycodproducto(dsProducto.producto, descripcion);


            /*SqlConnection oCon = new SqlConnection(cadenaconexion);
            SqlDataAdapter da2 = new SqlDataAdapter("select stock from producto  where cod_prod='" + codigoproducto + "'", oCon);
            da2.Fill(ds, "buscarstock");*/
            if (dsProducto.producto.Rows.Count == 0)
            {
                lblMensajeProducto.Text = "No se encontro el producto en la base de datos";
            }
            else
            {
                lblMensajeProducto.Text = "Producto encontrado";
                txtstock.Text = dsProducto.producto[0].stock;
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string cod_almacen = Request.QueryString["codAlmacen"];
                string descripcion = TextBox1.Text;
                int cantidad = Convert.ToInt32(txtCantidad.Text);
                dsVentasTableAdapters.productoTableAdapter adaptadorproducto = new dsVentasTableAdapters.productoTableAdapter();
                dsVentas dsproducto = new dsVentas();
                adaptadorproducto.FillBycodproducto(dsproducto.producto, descripcion);
                int stock = Convert.ToInt32(dsproducto.producto[0].stock);
                string codproducto = dsproducto.producto[0].cod_prod;
                dsVentasTableAdapters.almacen_productoTableAdapter adaptadoralmacenproducto = new dsVentasTableAdapters.almacen_productoTableAdapter();
                dsVentas dsalmacenproducto = new dsVentas();
                dsVentas dsalmacenproducto2 = new dsVentas();
                adaptadoralmacenproducto.FillBycodigoproducto(dsalmacenproducto.almacen_producto, cod_almacen, codproducto);
                if (dsalmacenproducto.almacen_producto.Rows.Count == 0)
                {
                    if (stock - cantidad >= 0)
                    {
                        dsproducto.producto[0].stock = Convert.ToString(stock - cantidad);
                        adaptadorproducto.Update(dsproducto);
                        dsalmacenproducto2.almacen_producto.Addalmacen_productoRow(cod_almacen, codproducto, cantidad);
                        adaptadoralmacenproducto.Update(dsalmacenproducto2);
                        txtstock.Text = Convert.ToString(stock - cantidad);
                        lblmensajeTotal.Text = "producto almacenado";
                    }
                    else
                    {
                        lblmensajeTotal.Text = "Stock insuficiente";
                    }
                }
                else
                {
                    if (stock - cantidad >= 0)
                    {
                        dsproducto.producto[0].stock = Convert.ToString(stock - cantidad);
                        adaptadorproducto.Update(dsproducto);
                        dsalmacenproducto.almacen_producto[0].cantidad_prod_almacen = stock - cantidad;
                        adaptadoralmacenproducto.Update(dsalmacenproducto);
                        txtstock.Text = Convert.ToString(stock - cantidad);
                        lblmensajeTotal.Text = "cantidad actualizada";
                    }
                    else
                    {
                        lblmensajeTotal.Text = "Stock insuficiente";
                    }
                }

            }
            catch (Exception m)
            {
                lblmensajeTotal.Text = m.Message;
            }

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}