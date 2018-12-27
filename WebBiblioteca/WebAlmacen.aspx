<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebAlmacen.aspx.cs" Inherits="WebVentas.WebAlmacen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Proceso Almacen"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="Medium" ForeColor="White" Text="Elija el almacen donde guardara el producto..."></asp:Label>
    <br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cod_Almacen" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:TemplateField HeaderText="cod_Almacen">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("cod_Almacen", "WebAlmacenProducto.aspx?codAlmacen={0}") %>' Text='<%# Eval("cod_Almacen") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Ubicacion_almacen" HeaderText="Ubicacion_almacen" SortExpression="Ubicacion_almacen" />
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
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebVentas.dsVentasTableAdapters.almacenTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_cod_Almacen" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="cod_Almacen" Type="String" />
        <asp:Parameter Name="Ubicacion_almacen" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ubicacion_almacen" Type="String" />
        <asp:Parameter Name="Original_cod_Almacen" Type="String" />
    </UpdateParameters>
</asp:ObjectDataSource>
    <br />
</asp:Content>
