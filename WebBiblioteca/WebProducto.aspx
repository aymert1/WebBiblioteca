<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebProducto.aspx.cs" Inherits="WebVentas.WebProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Mantenimiento Productos" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cod_prod" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cod_prod" HeaderText="cod_prod" ReadOnly="True" SortExpression="cod_prod" />
            <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="id_prov" HeaderText="id_prov" SortExpression="id_prov" />
            <asp:BoundField DataField="precio_actual" HeaderText="precio_actual" SortExpression="precio_actual" />
            <asp:BoundField DataField="precio_anterior" HeaderText="precio_anterior" SortExpression="precio_anterior" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VentasConnectionString %>" DeleteCommand="DELETE FROM [producto] WHERE [cod_prod] = @cod_prod" InsertCommand="INSERT INTO [producto] ([cod_prod], [stock], [descripcion], [id_prov], [precio_actual], [precio_anterior]) VALUES (@cod_prod, @stock, @descripcion, @id_prov, @precio_actual, @precio_anterior)" SelectCommand="SELECT [cod_prod], [stock], [descripcion], [id_prov], [precio_actual], [precio_anterior] FROM [producto]" UpdateCommand="UPDATE [producto] SET [stock] = @stock, [descripcion] = @descripcion, [id_prov] = @id_prov, [precio_actual] = @precio_actual, [precio_anterior] = @precio_anterior WHERE [cod_prod] = @cod_prod">
        <DeleteParameters>
            <asp:Parameter Name="cod_prod" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cod_prod" Type="String" />
            <asp:Parameter Name="stock" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="id_prov" Type="String" />
            <asp:Parameter Name="precio_actual" Type="String" />
            <asp:Parameter Name="precio_anterior" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="stock" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="id_prov" Type="String" />
            <asp:Parameter Name="precio_actual" Type="String" />
            <asp:Parameter Name="precio_anterior" Type="String" />
            <asp:Parameter Name="cod_prod" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebBoleta.aspx">Volver a la Boleta</asp:HyperLink>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Nuevo Producto" OnClick="Button1_Click" BackColor="#000099" ForeColor="White" />
    <br />
    <br />
    </asp:Content>
