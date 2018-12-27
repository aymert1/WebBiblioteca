<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebBoleta.aspx.cs" Inherits="WebVentas.WebBoleta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White" Text="Boleta de Venta"></asp:Label>
    <br />
</p>
    <table runat="server" id="table1" style="width: 76%; margin-right: 93px; background-color: #101050; margin-left: 103px;">
        <tr>
            <td style="height: 23px; text-align: right;" colspan="3">
    <asp:Label ID="Label4" runat="server" Text="RUC: " ForeColor="White"></asp:Label>
            </td>
            <td style="height: 23px" colspan="2">
                <asp:Label ID="txtRuc" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="Large" ForeColor="#3399FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 1042px; ">
                </td>
            <td style="width: 264px; ">
                </td>
            <td style="margin-left: 120px; width: 266px; text-align: right;">
    <asp:Label ID="Label8" runat="server" Text="Boleta N°:" ForeColor="White"></asp:Label>
            </td>
            <td style="margin-left: 120px; " colspan="2">
                <asp:Label ID="txtBoleta" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="Large" ForeColor="#3399FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 1042px; ">
                &nbsp;</td>
            <td style="width: 264px; ">
                &nbsp;</td>
            <td style="margin-left: 120px; width: 266px; text-align: right;">
                <asp:Label ID="Label2" runat="server" Text="Fecha: " ForeColor="White"></asp:Label>
            </td>
            <td style="margin-left: 120px; " colspan="2">
                <asp:Label ID="txtFecha" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="Large" ForeColor="#3399FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 1042px; text-align: right;">
                <asp:Label ID="Label1" runat="server" Text="Ingrese el DNI del Cliente:" ForeColor="White"></asp:Label>
                </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtDniCliente" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDniCliente" ErrorMessage="formato incorrecto de DNI" ValidationExpression="\d{8}" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
            <td style="height: 23px; width: 266px;">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" BackColor="#000099" BorderColor="White" BorderStyle="Double" ForeColor="White" />
                <asp:Button ID="Button1" runat="server" Text="Nuevo Cliente" OnClick="Button1_Click1" Visible="False" BackColor="#000099" BorderStyle="Double" ForeColor="White" />
                </td>
            <td style="height: 23px" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 23px">
                &nbsp;</td>
            <td style="width: 264px; height: 23px">
                <asp:Label ID="lblMensajeCliente" runat="server" ForeColor="Red"></asp:Label>
                <br />
            </td>
            <td style="height: 23px; margin-left: 120px; width: 266px;">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebCliente.aspx">Visualizar Lista de Clientes</asp:HyperLink>
                <br />
            </td>
            <td style="height: 23px; margin-left: 120px; " colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 26px; text-align: right;">
                <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Señor(es):"></asp:Label>
            </td>
            <td style="width: 264px; height: 26px;">
                <asp:TextBox ID="txtNombreCliente" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px; width: 266px; text-align: right;">
                <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Direccion:"></asp:Label>
                </td>
            <td style="height: 26px; width: 356px;">
                <asp:TextBox ID="txtDireccionCliente" runat="server" Enabled="False"></asp:TextBox>
                </td>
            <td style="height: 26px; width: 151px;">
                <asp:Button ID="btnGuardarCliente" runat="server" OnClick="btnGuardarCliente_Click" Text="Guardar Cliente" Visible="False" BackColor="#000099" ForeColor="White" />
                </td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 26px; text-align: right;">
                &nbsp;</td>
            <td style="width: 264px; height: 26px;">
                &nbsp;</td>
            <td style="height: 26px; width: 266px; text-align: right;">
                &nbsp;</td>
            <td style="height: 26px; width: 356px;">&nbsp;</td>
            <td style="height: 26px; width: 151px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1042px; text-align: right; height: 33px;">
                <asp:Label ID="Label11" runat="server" ForeColor="White" Text="ingrese la descripcion del producto"></asp:Label>
                <br />
                <br />
            </td>
            <td style="width: 264px; height: 33px;">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <br />
                <asp:Label ID="lblMensajeProducto" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="width: 266px; height: 33px;">
                <asp:Button ID="btnBuscarProducto" runat="server" Text="Buscar Producto" OnClick="Button1_Click" BackColor="#000099" ForeColor="White" />
                <br />
            </td>
            <td style="height: 33px;" colspan="2">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebProducto.aspx">Visualizar Productos</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 30px; text-align: right;">
                <asp:Label ID="Label5" runat="server" Text="Stock Actual del producto" ForeColor="White"></asp:Label>
                <br />
            </td>
            <td style="width: 264px; height: 30px">
                <asp:TextBox ID="txtstock" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 266px;">
                <br />
            </td>
            <td style="height: 30px; " colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 30px; text-align: right;">
                <asp:Label ID="Label12" runat="server" ForeColor="White" Text="Ingrese la cantidad que desea comprar"></asp:Label>
            </td>
            <td style="width: 264px; height: 30px">
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 30px; width: 266px;">
                <asp:Button ID="btnAgregaralCarro" runat="server" OnClick="btnAgregaralCarro_Click" Text="Agregar a la lista de compra" BackColor="#000099" ForeColor="White" />
            </td>
            <td style="height: 30px; " colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 30px; text-align: right;">
                <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Lista de Compra:"></asp:Label>
            </td>
            <td style="width: 264px; height: 30px">
                &nbsp;</td>
            <td style="height: 30px; width: 266px;">
                &nbsp;</td>
            <td style="height: 30px; " colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 30px; text-align: center;" colspan="5">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                </td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 30px">&nbsp;</td>
            <td style="width: 264px; height: 30px; text-align: right;">
                <asp:Label ID="Label3" runat="server" Text="Total" ForeColor="White"></asp:Label>
                </td>
            <td style="height: 30px; width: 266px;">
                <asp:TextBox ID="txtTotal" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 30px; " colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1042px; height: 30px">&nbsp;</td>
            <td style="width: 264px; height: 30px; text-align: right;">&nbsp;</td>
            <td style="height: 30px; width: 266px;">
                <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" BackColor="#000099" ForeColor="White" />
                <asp:Button ID="btnCancelar" runat="server" BackColor="#000099" ForeColor="White" OnClick="btnCancelar_Click" Text="Cancelar" />
                <br />
                <asp:Label ID="lblmensajeTotal" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 30px; " colspan="2">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/WebVerBoletas.aspx">Volver a lista de boletas</asp:HyperLink>
            </td>
        </tr>
    </table>
<p>
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <br />
</p>
<p>
    &nbsp;</p>
</asp:Content>
