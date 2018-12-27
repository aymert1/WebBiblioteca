<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebProductotoalmacen.aspx.cs" Inherits="WebVentas.WebProductotoalmacen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="Medium" ForeColor="White" Text="Agregando desde almacen..."></asp:Label>
    <br />
    <br />
    <br />
    <table runat="server" style="width: 48%; margin-left: 145px; background-color: #101050;" id="table1">
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Descripcion del producto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Stock del producto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStock" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Nro de almacen"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Stock en almacen"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStockAlmacen" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label9" runat="server" ForeColor="White" Text="ingrese la cantidad que desea insertar al producto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCantidadAlmacen" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="#000099" ForeColor="White" Text="Guardar" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" BackColor="#000099" ForeColor="White" Text="Cancelar" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
