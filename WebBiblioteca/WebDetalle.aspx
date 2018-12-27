<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebDetalle.aspx.cs" Inherits="WebVentas.WebDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Detalle de la boleta"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="num_boleta,cod_prod" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="num_boleta" HeaderText="num_boleta" ReadOnly="True" SortExpression="num_boleta" />
                <asp:BoundField DataField="cod_prod" HeaderText="cod_prod" ReadOnly="True" SortExpression="cod_prod" />
                <asp:BoundField DataField="pre_venta" HeaderText="pre_venta" SortExpression="pre_venta" />
                <asp:BoundField DataField="cant_vendida" HeaderText="cant_vendida" SortExpression="cant_vendida" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCodBoleta" TypeName="WebVentas.dsVentasTableAdapters.boleta_productoTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_num_boleta" Type="Int32" />
                <asp:Parameter Name="Original_cod_prod" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="num_boleta" Type="Int32" />
                <asp:Parameter Name="cod_prod" Type="String" />
                <asp:Parameter Name="pre_venta" Type="String" />
                <asp:Parameter Name="cant_vendida" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="numboleta" QueryStringField="numboleta" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="pre_venta" Type="String" />
                <asp:Parameter Name="cant_vendida" Type="String" />
                <asp:Parameter Name="Original_num_boleta" Type="Int32" />
                <asp:Parameter Name="Original_cod_prod" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebVerBoletas.aspx">Volver a las Boletas</asp:HyperLink>
    </p>
</asp:Content>
