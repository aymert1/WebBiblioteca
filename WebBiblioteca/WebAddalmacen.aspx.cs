using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebAddalmacen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                dsVentasTableAdapters.almacenTableAdapter adaptadoralmacen = new dsVentasTableAdapters.almacenTableAdapter();
                dsVentas dsAlmacen = new dsVentas();
                dsAlmacen.almacen.AddalmacenRow(txtDni.Text, txtNombre.Text);
                adaptadoralmacen.Update(dsAlmacen);
                lblMensaje.Text = "Cliente Ingresado correctamente";
                
            }
            catch (Exception m)
            {
                lblMensaje.Text = m.Message;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            table1.Visible = false;
            txtDni.Text = "";
            txtNombre.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            table1.Visible = true;
        }
    }
}