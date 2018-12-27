<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebCliente.aspx.cs" Inherits="WebVentas.WebCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Mantenimiento de Clientes" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White"></asp:Label>
<br />
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DNI_cli" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="DNI_cli" HeaderText="DNI_cli" ReadOnly="True" SortExpression="DNI_cli" />
        <asp:BoundField DataField="nom_cli" HeaderText="nom_cli" SortExpression="nom_cli" />
        <asp:BoundField DataField="direc_cli" HeaderText="direc_cli" SortExpression="direc_cli" />
    </Columns>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentasConnectionString %>" DeleteCommand="DELETE FROM [Cliente] WHERE [DNI_cli] = @DNI_cli" InsertCommand="INSERT INTO [Cliente] ([DNI_cli], [nom_cli], [direc_cli]) VALUES (@DNI_cli, @nom_cli, @direc_cli)" SelectCommand="SELECT [DNI_cli], [nom_cli], [direc_cli] FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [nom_cli] = @nom_cli, [direc_cli] = @direc_cli WHERE [DNI_cli] = @DNI_cli">
    <DeleteParameters>
        <asp:Parameter Name="DNI_cli" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="DNI_cli" Type="String" />
        <asp:Parameter Name="nom_cli" Type="String" />
        <asp:Parameter Name="direc_cli" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nom_cli" Type="String" />
        <asp:Parameter Name="direc_cli" Type="String" />
        <asp:Parameter Name="DNI_cli" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebBoleta.aspx">Volver a la Boleta</asp:HyperLink>
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#000099" ForeColor="White" Text="Ingresar nuevo Cliente" OnClick="Button1_Click" />
    <br />
    <table runat="server" style="width: 48%; margin-left: 145px; background-color: #101050;" id="table1">
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Ingresar el Dni del cliente"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDni" ErrorMessage="Formato incorrecto" ForeColor="Red" ValidationExpression="\d{8}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Ingresar el nombre del cliente"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Ingresar la direccion del cliente"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDirecCli" runat="server"></asp:TextBox>
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
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
