<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebProductoAlmacen.aspx.cs" Inherits="WebVentas.WebProductoAlmacen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Agregar producto desde el almacen"></asp:Label>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cod_prod" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="cod_prod">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("cod_prod", "WebProductotoalmacen.aspx?codprod={0}") %>' Text='<%# Eval("cod_prod") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="id_prov" HeaderText="id_prov" SortExpression="id_prov" />
                <asp:BoundField DataField="precio_anterior" HeaderText="precio_anterior" SortExpression="precio_anterior" />
                <asp:BoundField DataField="precio_actual" HeaderText="precio_actual" SortExpression="precio_actual" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebVentas.dsVentasTableAdapters.productoTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_cod_prod" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cod_prod" Type="String" />
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="id_prov" Type="String" />
                <asp:Parameter Name="precio_actual" Type="String" />
                <asp:Parameter Name="precio_anterior" Type="String" />
                <asp:Parameter Name="stock" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="id_prov" Type="String" />
                <asp:Parameter Name="precio_actual" Type="String" />
                <asp:Parameter Name="precio_anterior" Type="String" />
                <asp:Parameter Name="stock" Type="String" />
                <asp:Parameter Name="Original_cod_prod" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>
