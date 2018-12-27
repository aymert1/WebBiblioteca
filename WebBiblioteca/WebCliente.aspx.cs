using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            table1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            table1.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                dsVentasTableAdapters.ClienteTableAdapter adaptadorCliente = new dsVentasTableAdapters.ClienteTableAdapter();
                dsVentas dsCliente = new dsVentas();
                dsCliente.Cliente.AddClienteRow(txtDni.Text, txtNombre.Text, txtDirecCli.Text);
                adaptadorCliente.Update(dsCliente);
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
            txtDirecCli.Text = "";
        }
    }
}