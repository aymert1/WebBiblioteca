<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebAddalmacen.aspx.cs" Inherits="WebVentas.WebAddalmacen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Mantenimiento almacen"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cod_Almacen" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="cod_Almacen">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("cod_Almacen", "webVerAlmacenDetalle.aspx?codalmacen={0}") %>' Text='<%# Eval("cod_Almacen") %>'></asp:HyperLink>
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
    C:<asp:Button ID="Button1" runat="server" BackColor="#000099" ForeColor="White" Text="Ingresar nuevo Almacen" OnClick="Button1_Click" />
    <table runat="server" style="width: 48%; margin-left: 145px; background-color: #101050;" id="table1" visible="False">
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Ingresar el Nro del almacen"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDni" ErrorMessage="Formato incorrecto" ForeColor="Red" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Ingresar la ubicacion del almacen"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
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
    \Users\USUARIO\Documents\Fax\proyecTaller3\WebBiblioteca\WebBiblioteca\WebCliente.aspx
</asp:Content>
