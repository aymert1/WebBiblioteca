using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebVentas
{
    public partial class WebBoleta : System.Web.UI.Page
    {

        private string cadenaconexion = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["VentasConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null)
            {
                DataSet ds = new DataSet();
                SqlConnection oCon = new SqlConnection(cadenaconexion);
                SqlDataAdapter da2 = new SqlDataAdapter("select id_empl from empleado  where id_empl='" + Session["Username"] + "'", oCon);
                da2.Fill(ds, "buscarempleado");
                DateTime Hoy = DateTime.Today;
                string fecha_actual = Hoy.ToString("dd-MM-yyyy");
                txtFecha.Text = fecha_actual;
                string codigoproducto = TextBox1.Text;
                SqlDataAdapter da3 = new SqlDataAdapter("select ruc from empresa ", oCon);
                da3.Fill(ds, "buscarRUC");
                txtRuc.Text = ds.Tables["buscarRUC"].Rows[0][0].ToString();
                SqlDataAdapter da4 = new SqlDataAdapter("select num_boleta from boleta", oCon);
                da4.Fill(ds,"buscarBoleta");
                int cont = ds.Tables["buscarBoleta"].Rows.Count-1;
                txtBoleta.Text = Convert.ToString( Convert.ToInt32( ds.Tables["buscarBoleta"].Rows[cont][0].ToString())+1);
            }
        }
        DataTable dt = new DataTable();
        protected void Button1_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            txtCantidad.Text = "";
            dsVentasTableAdapters.productoTableAdapter adaptadorProducto = new dsVentasTableAdapters.productoTableAdapter();
            dsVentas dsProducto = new dsVentas();
            string descripcion = TextBox1.Text;
            adaptadorProducto.FillBycodproducto(dsProducto.producto, descripcion);

            
            /*SqlConnection oCon = new SqlConnection(cadenaconexion);
            SqlDataAdapter da2 = new SqlDataAdapter("select stock from producto  where cod_prod='" + codigoproducto + "'", oCon);
            da2.Fill(ds, "buscarstock");*/
            if (dsProducto.producto.Rows.Count==0)
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


                dsVentasTableAdapters.boletaTableAdapter adaptadorboleta = new dsVentasTableAdapters.boletaTableAdapter();
                dsVentas dsboleta = new dsVentas();
                dsboleta.boleta.AddboletaRow( txtTotal.Text, txtFecha.Text, txtDniCliente.Text, Session["Username"].ToString(), txtRuc.Text);
                
                dsVentasTableAdapters.boleta_productoTableAdapter adaptadorbolprod = new dsVentasTableAdapters.boleta_productoTableAdapter();
                dsVentas dsprod_boleta = new dsVentas();
                dsVentasTableAdapters.productoTableAdapter adaptadorproducto = new dsVentasTableAdapters.productoTableAdapter();
                dsVentas dsproducto = new dsVentas();
                
                adaptadorboleta.Update(dsboleta);
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    dsprod_boleta.boleta_producto.Addboleta_productoRow(Convert.ToInt32(txtBoleta.Text), GridView1.Rows[i].Cells[0].Text, GridView1.Rows[i].Cells[2].Text, GridView1.Rows[i].Cells[3].Text);

                }
                adaptadorbolprod.Update(dsprod_boleta);

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {

                    adaptadorproducto.FillByCodigoProducto(dsproducto.producto, GridView1.Rows[i].Cells[0].Text);
                    int stock = Convert.ToInt32(dsproducto.producto[0].stock);
                    int cantidad = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
                    dsproducto.producto[0].stock = Convert.ToString(stock-cantidad);
                    adaptadorproducto.Update(dsproducto);
                }
                txtstock.Text = Convert.ToString(Convert.ToInt32(txtstock.Text) - Convert.ToInt32(txtCantidad.Text));
                lblmensajeTotal.Text = "Registro Guardado Correctamente";
                
                Session["carrito"] = null;
           }
            catch(Exception m)
            {
                lblmensajeTotal.Text = m.Message;
            }
        }

        protected void btnAgregaralCarro_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            SqlConnection oCon = new SqlConnection(cadenaconexion);
            double total = 0;
            DataRow a = dt.NewRow();
            dt.Columns.Add("codigo_producto");
            dt.Columns.Add("descripcion");
            dt.Columns.Add("precio_actual");
            dt.Columns.Add("Cantidad");
            dt.Columns.Add("importe");
            if (Session["carrito"] != null)
            {
                dt = Session["carrito"] as DataTable;
            }

            string descripcion = TextBox1.Text;
            int cantidad = Convert.ToInt32(txtCantidad.Text);
            int stock = Convert.ToInt32(txtstock.Text);

            if (stock - cantidad <= 0)
            {
                lblMensaje.Text = "cantidad en stock insuficiente";
                txtCantidad.Text = "";
            }
            else
            {
                
                lblMensaje.Text = "Agregado correctamente";
                SqlDataAdapter da = new SqlDataAdapter("select cod_prod, descripcion, precio_actual from producto  where descripcion like '%" + descripcion + "%'", oCon);
                DataSet ds = new DataSet();
                da.Fill(ds, "buscarestudiante");

                int nro = ds.Tables["buscarestudiante"].Rows.Count;

                ds.Tables["buscarestudiante"].Columns.Add("Cantidad");
                ds.Tables["buscarestudiante"].Columns.Add("importe");
                ds.Tables["buscarestudiante"].Rows[0][3] = txtCantidad.Text;
                ds.Tables["buscarestudiante"].Rows[0][4] = Convert.ToDouble(Convert.ToDouble( cantidad) * Convert.ToDouble(ds.Tables["buscarestudiante"].Rows[0][2].ToString()));
                //dt = ds.Tables["buscarestudiante"];
                
                dt.PrimaryKey = new DataColumn[] {dt.Columns["descripcion"]};
                if (dt.Rows.Find(descripcion) == null)
                {
                    a["codigo_producto"] = ds.Tables["buscarestudiante"].Rows[0][0].ToString();
                    a["descripcion"] = ds.Tables["buscarestudiante"].Rows[0][1].ToString();
                    a["precio_actual"] = ds.Tables["buscarestudiante"].Rows[0][2].ToString();
                    a["Cantidad"] = ds.Tables["buscarestudiante"].Rows[0][3].ToString();
                    a["Importe"] = ds.Tables["buscarestudiante"].Rows[0][4].ToString();

                    dt.Rows.Add(a.ItemArray);
                    Session["carrito"] = dt;
                    if (nro == 1)
                    {//si existe la carrera
                        /*txtNombre.Text = ds.Tables["buscarestudiante"].Rows[0]["nombres_estudiante"].ToString() + " " + ds.Tables["buscarestudiante"].Rows[0]["apellidos_estudiante"].ToString();
                        txtCarrera.Text = ds.Tables["buscarestudiante"].Rows[0]["nombre_carrera"].ToString();
                        */

                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        for (int i = 0; i < GridView1.Rows.Count; i++)
                        {
                            //GridView1.Rows[i].Cells[3].
                            total += Convert.ToDouble(GridView1.Rows[i].Cells[4].Text);
                        }
                        txtTotal.Text = Convert.ToString(total);
                    }
                }
                else 
                {
                    string cantidadenstock = txtstock.Text;
                    
                    string descripcionproducto = ds.Tables["buscarestudiante"].Rows[0][1].ToString();
                    
                    for (int i = 0; i < GridView1.Rows.Count; i++)
                    {

                        if (GridView1.Rows[i].Cells[1].Text==descripcionproducto)
                        {
                            int cantidadnueva = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text) + Convert.ToInt32( txtCantidad.Text);

                            if (cantidadnueva <= Convert.ToInt32(cantidadenstock))
                            {
                                lblMensaje.Text = "Cantidad Actualizada";
                                GridView1.Rows[i].Cells[3].Text = Convert.ToString(Convert.ToInt32(GridView1.Rows[i].Cells[3].Text) + Convert.ToInt32(txtCantidad.Text));
                                int cantidadactualizada = Convert.ToInt32( GridView1.Rows[i].Cells[3].Text);
                                GridView1.Rows[i].Cells[4].Text = Convert.ToString(cantidadactualizada * Convert.ToDouble(ds.Tables["buscarestudiante"].Rows[0][2].ToString()));
                
                            }
                            else
                            {
                                lblMensaje.Text="Stock insuficiente";
                            }
                           
                        }

                    }
                    for (int i = 0; i < GridView1.Rows.Count; i++)
                    {
                        //GridView1.Rows[i].Cells[3].
                        total += Convert.ToDouble(GridView1.Rows[i].Cells[4].Text);
                    }
                    txtTotal.Text = Convert.ToString(total);
                }

            }
            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            txtNombreCliente.Enabled = false;
            txtDireccionCliente.Enabled = false;
            Button1.Visible = false;
            btnGuardarCliente.Visible = false;
            DataSet ds = new DataSet();
            string codcliente = txtDniCliente.Text;
            SqlConnection oCon = new SqlConnection(cadenaconexion);
            SqlDataAdapter da2 = new SqlDataAdapter("select nom_cli as Nombre, direc_cli from cliente  where dni_cli='" + codcliente + "'", oCon);
            
            da2.Fill(ds, "buscarcliente");
            if (ds.Tables["buscarcliente"].Rows.Count == 0)
            {
                lblMensajeCliente.Text = "el cliente no esta registrado";
                Button1.Visible = true;
                txtNombreCliente.Text = "";
                txtDireccionCliente.Text = "";
                
            }
            else
            {

                lblMensajeCliente.Text = "Cliente encontrado";
                txtNombreCliente.Text = ds.Tables["buscarcliente"].Rows[0][0].ToString();
                txtDireccionCliente.Text = ds.Tables["buscarcliente"].Rows[0][1].ToString();
            }
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            txtNombreCliente.Enabled = true;
            txtDireccionCliente.Enabled = true;
            btnGuardarCliente.Visible = true;
        }

        protected void btnGuardarCliente_Click(object sender, EventArgs e)
        {
            
            dsVentasTableAdapters.ClienteTableAdapter adaptadorcliente = new dsVentasTableAdapters.ClienteTableAdapter();
            dsVentas dsCliente = new dsVentas();
            dsCliente.Cliente.AddClienteRow(txtDniCliente.Text, txtNombreCliente.Text, txtDireccionCliente.Text);
            adaptadorcliente.Update(dsCliente);
            lblMensajeCliente.Text = "cliente guardado correctamente";


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Session["carrito"] = null;
            Response.Redirect("WebVerBoletas.aspx");
        }
    }
}