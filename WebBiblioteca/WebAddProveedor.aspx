<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebAddProveedor.aspx.cs" Inherits="WebVentas.WebAddProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Agregar Producto"></asp:Label>
    <br />
    <table runat="server" id="table1" style="width:47%; background-color: #101050; margin-left: 57px; margin-right: 0px;">
        <tr>
            <td style="width: 322px; height: 26px;">
                <asp:Label ID="Label2" runat="server" Text="Codigo de Producto:" ForeColor="White"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:TextBox ID="txtCodProd" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 322px">
                <asp:Label ID="Label3" runat="server" Text="Stock:" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtStock" ErrorMessage="Formato Incorrecto de Stock (Solo se admiten Numeros Enteros)" ForeColor="Red" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 322px">
                <asp:Label ID="Label9" runat="server" Text="Descripcion:" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 322px">
                <asp:Label ID="Label5" runat="server" Text="Proveedor" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="ObjectDataSource1" DataTextField="razon_social" DataValueField="id_prov">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebVentas.dsVentasTableAdapters.proveedorTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_id_prov" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_prov" Type="String" />
                        <asp:Parameter Name="nom_prov" Type="String" />
                        <asp:Parameter Name="apell_prov" Type="String" />
                        <asp:Parameter Name="razon_social" Type="String" />
                        <asp:Parameter Name="DNI_prov" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nom_prov" Type="String" />
                        <asp:Parameter Name="apell_prov" Type="String" />
                        <asp:Parameter Name="razon_social" Type="String" />
                        <asp:Parameter Name="DNI_prov" Type="String" />
                        <asp:Parameter Name="Original_id_prov" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 322px">
                <asp:Label ID="Label7" runat="server" Text="Precio Anterior" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPrecioAnterior" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrecioAnterior" ErrorMessage="Formato Incorrecto de Precio" ForeColor="Red" ValidationExpression="\d+(,\d+)?">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 322px">
                <asp:Label ID="Label6" runat="server" Text="Precio Actual" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPrecioActual" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrecioActual" ErrorMessage="Formato Incorrecto de Precio" ForeColor="Red" ValidationExpression="\d+(,\d+)?">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 322px">&nbsp;</td>
            <td>
                <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" BackColor="#000099" ForeColor="White" />
                <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" BackColor="#000099" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td style="width: 322px">
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebProducto.aspx">Volver a lista de productos</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
