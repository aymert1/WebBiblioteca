<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebAlmacenProducto.aspx.cs" Inherits="WebVentas.WebAlmacenProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Proceso de Almacen"></asp:Label>
    <br />
    <br />
    <br />
    <table runat="server" id="table1" style="width: 80%; margin-right: 93px; background-color: #101050; margin-left: 85px;">
        <tr>
            <td style="width: 636px; text-align: right; height: 33px;">
                <asp:Label ID="Label19" runat="server" ForeColor="White" Text="Guardara el Producto en el Almacen N°:"></asp:Label>
            </td>
            <td style="width: 264px; height: 33px;">
                <asp:Label ID="lblCodAlmacen" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="#0066FF"></asp:Label>
            </td>
            <td style="width: 233px; height: 33px;">
                &nbsp;</td>
            <td style="height: 33px; width: 273px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 636px; text-align: right; height: 33px;">
                <asp:Label ID="Label11" runat="server" ForeColor="White" Text="ingrese la descripcion del producto"></asp:Label>
                <br />
                <br />
            </td>
            <td style="width: 264px; height: 33px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblMensajeProducto" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="width: 233px; height: 33px;">
                <asp:Button ID="btnBuscarProducto" runat="server" Text="Buscar Producto" OnClick="Button1_Click" BackColor="#000099" ForeColor="White" />
                <br />
            </td>
            <td style="height: 33px; width: 273px;">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebProducto.aspx">Visualizar Productos</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td style="width: 636px; height: 30px; text-align: right;">
                <asp:Label ID="Label18" runat="server" Text="Stock Actual del producto" ForeColor="White"></asp:Label>
                <br />
            </td>
            <td style="width: 264px; height: 30px">
                <asp:TextBox ID="txtstock" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 233px;">
                <br />
            </td>
            <td style="height: 30px; width: 273px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 636px; height: 30px; text-align: right;">
                <asp:Label ID="Label12" runat="server" ForeColor="White" Text="Ingrese la cantidad que desea guardar en el almacen"></asp:Label>
            </td>
            <td style="width: 264px; height: 30px">
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 233px;">
                <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" BackColor="#000099" ForeColor="White" />
                <asp:Button ID="btnCancelar" runat="server" BackColor="#000099" ForeColor="White" OnClick="btnCancelar_Click" Text="Cancelar" />
            </td>
            <td style="height: 30px; width: 273px;">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/WebAlmacen.aspx">Volver a lista de Almacenes</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 636px; height: 30px; text-align: right;">
                &nbsp;</td>
            <td style="width: 264px; height: 30px">
                &nbsp;</td>
            <td style="height: 30px; width: 233px;">
                <asp:Label ID="lblmensajeTotal" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 30px; width: 273px;">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
