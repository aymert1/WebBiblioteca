<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="webVerAlmacenDetalle.aspx.cs" Inherits="WebVentas.webVerAlmacenDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Visualizacion de Almacen"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="cod_Almacen,cod_prod" DataSourceID="ObjectDataSource1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="cod_Almacen" HeaderText="cod_Almacen" ReadOnly="True" SortExpression="cod_Almacen" />
            <asp:BoundField DataField="cod_prod" HeaderText="cod_prod" ReadOnly="True" SortExpression="cod_prod" />
            <asp:BoundField DataField="cantidad_prod_almacen" HeaderText="cantidad_prod_almacen" SortExpression="cantidad_prod_almacen" />
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBycodalmacen" TypeName="WebVentas.dsVentasTableAdapters.almacen_productoTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_cod_Almacen" Type="String" />
            <asp:Parameter Name="Original_cod_prod" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cod_Almacen" Type="String" />
            <asp:Parameter Name="cod_prod" Type="String" />
            <asp:Parameter Name="cantidad_prod_almacen" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="codalmacen" QueryStringField="codalmacen" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="cantidad_prod_almacen" Type="Int32" />
            <asp:Parameter Name="Original_cod_Almacen" Type="String" />
            <asp:Parameter Name="Original_cod_prod" Type="String" />
        </UpdateParameters>
</asp:ObjectDataSource>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebAddalmacen.aspx">Volver a la lista de almacenes</asp:HyperLink>
    <br />
</asp:Content>
