<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebPrestamoLibro.aspx.cs" Inherits="WebBiblioteca.WebPrestamoLibro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Prestamo de libro" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Seleccionar estudiante"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ap_estudiante" DataValueField="codigo_estudiante" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigo_estudiante], [ap_estudiante] FROM [estudiante]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="codigoLibro" DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="codigoLibro" HeaderText="codigoLibro" ReadOnly="True" SortExpression="codigoLibro" />
            <asp:BoundField DataField="tituloLibro" HeaderText="tituloLibro" SortExpression="tituloLibro" />
            <asp:BoundField DataField="autorLibro" HeaderText="autorLibro" SortExpression="autorLibro" />
            <asp:BoundField DataField="ResumenLibro" HeaderText="ResumenLibro" SortExpression="ResumenLibro" />
            <asp:BoundField DataField="portadaLibro" HeaderText="portadaLibro" SortExpression="portadaLibro" />
            <asp:BoundField DataField="stockLibro" HeaderText="stockLibro" SortExpression="stockLibro" />
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByLibroPorCodigo" TypeName="WebBiblioteca.dsBibliotecaTableAdapters.libroTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_codigoLibro" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="codigoLibro" Type="String" />
            <asp:Parameter Name="tituloLibro" Type="String" />
            <asp:Parameter Name="autorLibro" Type="String" />
            <asp:Parameter Name="ResumenLibro" Type="String" />
            <asp:Parameter Name="portadaLibro" Type="String" />
            <asp:Parameter Name="stockLibro" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="codigolibro" Name="codlibro" QueryStringField="codigolibro" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="tituloLibro" Type="String" />
            <asp:Parameter Name="autorLibro" Type="String" />
            <asp:Parameter Name="ResumenLibro" Type="String" />
            <asp:Parameter Name="portadaLibro" Type="String" />
            <asp:Parameter Name="stockLibro" Type="Int32" />
            <asp:Parameter Name="Original_codigoLibro" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_prestamo" DataSourceID="ObjectDataSource2">
        <Columns>
            <asp:BoundField DataField="codigo_prestamo" HeaderText="codigo_prestamo" InsertVisible="False" ReadOnly="True" SortExpression="codigo_prestamo" />
            <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" SortExpression="codigo_estudiante" />
            <asp:BoundField DataField="codigo_libro" HeaderText="codigo_libro" SortExpression="codigo_libro" />
            <asp:BoundField DataField="fecha_prestamo" HeaderText="fecha_prestamo" SortExpression="fecha_prestamo" />
            <asp:CheckBoxField DataField="devuelto" HeaderText="devuelto" SortExpression="devuelto" />
            <asp:BoundField DataField="fecha_devolucion" HeaderText="fecha_devolucion" SortExpression="fecha_devolucion" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBycodestudiante" TypeName="WebBiblioteca.dsBibliotecaTableAdapters.prestamoTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_codigo_prestamo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="codigo_estudiante" Type="String" />
            <asp:Parameter Name="codigo_libro" Type="String" />
            <asp:Parameter Name="fecha_prestamo" Type="DateTime" />
            <asp:Parameter Name="devuelto" Type="Boolean" />
            <asp:Parameter Name="fecha_devolucion" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="codigo_estudiante" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="codigo_estudiante" Type="String" />
            <asp:Parameter Name="codigo_libro" Type="String" />
            <asp:Parameter Name="fecha_prestamo" Type="DateTime" />
            <asp:Parameter Name="devuelto" Type="Boolean" />
            <asp:Parameter Name="fecha_devolucion" Type="DateTime" />
            <asp:Parameter Name="Original_codigo_prestamo" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:Button ID="button1" runat="server" OnClick="button1_Click" Text="Prestar Libro" />
    <asp:Button ID="btnDevolverLibro" runat="server" OnClick="btnDevolverLibro_Click" Text="Devolver Libro" />
    <br />
</asp:Content>
