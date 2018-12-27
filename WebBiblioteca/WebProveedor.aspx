<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebProveedor.aspx.cs" Inherits="WebVentas.WebProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Mantenimiento Proveedor"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id_prov" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id_prov" HeaderText="id_prov" ReadOnly="True" SortExpression="id_prov" />
            <asp:BoundField DataField="nom_prov" HeaderText="nom_prov" SortExpression="nom_prov" />
            <asp:BoundField DataField="apell_prov" HeaderText="apell_prov" SortExpression="apell_prov" />
            <asp:BoundField DataField="razon_social" HeaderText="razon_social" SortExpression="razon_social" />
            <asp:BoundField DataField="DNI_prov" HeaderText="DNI_prov" SortExpression="DNI_prov" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
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
    <br />
    <asp:Button ID="btnIngresarProveedor" runat="server" BackColor="#000099" ForeColor="White" Text="Ingresar nuevo Proveedor" OnClick="Button1_Click" />
    <br />
    <br />
    <table runat="server" id="table1" style="width: 52%; margin-top: 0px; background-color: #101050; margin-left: 158px; margin-right: 0px;">
        <tr>
            <td style="width: 171px">
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Ingresar el ID del proveedor"></asp:Label>
            </td>
            <td style="width: 53px">
                <asp:TextBox ID="txtIdProveedor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 171px">
                <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Nombre del Proveedor"></asp:Label>
            </td>
            <td style="width: 53px">
                <asp:TextBox ID="txtNombreProveedor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 171px; height: 23px">
                <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Apellido Proveedor"></asp:Label>
            </td>
            <td style="width: 53px; height: 23px">
                <asp:TextBox ID="txtApellidoProveedor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 171px; height: 23px">
                <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Razon Social"></asp:Label>
            </td>
            <td style="width: 53px; height: 23px">
                <asp:TextBox ID="txtRazonSocial" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 171px">
                <asp:Label ID="Label9" runat="server" ForeColor="White" Text="DNi Proveedor"></asp:Label>
            </td>
            <td style="width: 53px">
                <asp:TextBox ID="txtDniProve" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDniProve" ErrorMessage="Formato incorrecto" ForeColor="Red" ValidationExpression="\d{8}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 171px">&nbsp;</td>
            <td style="width: 53px">
    <asp:Button ID="btnGuardar" runat="server" BackColor="#000099" ForeColor="White" Text="Guardar" OnClick="btnGuardar_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 171px">
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td style="width: 53px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
