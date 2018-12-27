<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebVerBoletas.aspx.cs" Inherits="WebVentas.WebVerBoletas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Visualizacion de Boletas"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="num_boleta" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Num_Boleta">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("num_boleta", "WebDetalle.aspx?numboleta={0}") %>' Text='<%# Eval("num_boleta") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="precio_total" HeaderText="precio_total" SortExpression="precio_total" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="dni_cli" HeaderText="dni_cli" SortExpression="dni_cli" />
            <asp:BoundField DataField="id_empl" HeaderText="id_empl" SortExpression="id_empl" />
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebVentas.dsVentasTableAdapters.boletaTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_num_boleta" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="num_boleta" Type="Int32" />
            <asp:Parameter Name="precio_total" Type="String" />
            <asp:Parameter Name="fecha" Type="String" />
            <asp:Parameter Name="dni_cli" Type="String" />
            <asp:Parameter Name="id_empl" Type="String" />
            <asp:Parameter Name="RUC" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="precio_total" Type="String" />
            <asp:Parameter Name="fecha" Type="String" />
            <asp:Parameter Name="dni_cli" Type="String" />
            <asp:Parameter Name="id_empl" Type="String" />
            <asp:Parameter Name="RUC" Type="String" />
            <asp:Parameter Name="Original_num_boleta" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebBoleta.aspx">Agregar Nueva Boleta</asp:HyperLink>
    <br />
</asp:Content>
