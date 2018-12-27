<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebInicio.aspx.cs" Inherits="WebBiblioteca.WebInicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Welcome to the Library System" Font-Size="XX-Large" ForeColor="#6666FF"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Lista de Libros"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigoLibro" DataSourceID="ObjectDataSource1" Width="100px">
        <Columns>
            <asp:TemplateField HeaderText="Codigo libro">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("codigoLibro", "WebPrestamoLibro.aspx?codigolibro={0}") %>' Text='<%# Eval("codigoLibro") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="tituloLibro" HeaderText="tituloLibro" SortExpression="tituloLibro" />
            <asp:BoundField DataField="autorLibro" HeaderText="autorLibro" SortExpression="autorLibro" />
            <asp:BoundField DataField="ResumenLibro" HeaderText="ResumenLibro" SortExpression="ResumenLibro" />
            <asp:BoundField DataField="stockLibro" HeaderText="stockLibro" SortExpression="stockLibro" />
            <asp:ImageField DataImageUrlField="portadaLibro" DataImageUrlFormatString="../portadas/{0}" HeaderText="Portada">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebBiblioteca.dsBibliotecaTableAdapters.libroTableAdapter" UpdateMethod="Update">
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
        <UpdateParameters>
            <asp:Parameter Name="tituloLibro" Type="String" />
            <asp:Parameter Name="autorLibro" Type="String" />
            <asp:Parameter Name="ResumenLibro" Type="String" />
            <asp:Parameter Name="portadaLibro" Type="String" />
            <asp:Parameter Name="stockLibro" Type="Int32" />
            <asp:Parameter Name="Original_codigoLibro" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    Lista de Estudiantes<br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_estudiante" DataSourceID="ObjectDataSource2">
        <Columns>
            <asp:TemplateField HeaderText="codigo_estudiante">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("codigo_estudiante", "WebEstudiante.aspx?codestudiante={0}") %>' Text='<%# Eval("codigo_estudiante") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ap_estudiante" HeaderText="ap_estudiante" SortExpression="ap_estudiante" />
            <asp:BoundField DataField="nombres_estudiante" HeaderText="nombres_estudiante" SortExpression="nombres_estudiante" />
            <asp:BoundField DataField="codigo_carrera" HeaderText="codigo_carrera" SortExpression="codigo_carrera" />
            <asp:ImageField DataImageUrlField="foto_estudiante" DataImageUrlFormatString="../fotos/{0}" HeaderText="foto_estudiante">
            </asp:ImageField>
        </Columns>
        <EmptyDataTemplate>
            <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
        </EmptyDataTemplate>
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebBiblioteca.dsBibliotecaTableAdapters.estudianteTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_codigo_estudiante" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="codigo_estudiante" Type="String" />
        <asp:Parameter Name="ap_estudiante" Type="String" />
        <asp:Parameter Name="nombres_estudiante" Type="String" />
        <asp:Parameter Name="codigo_carrera" Type="String" />
        <asp:Parameter Name="foto_estudiante" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ap_estudiante" Type="String" />
        <asp:Parameter Name="nombres_estudiante" Type="String" />
        <asp:Parameter Name="codigo_carrera" Type="String" />
        <asp:Parameter Name="foto_estudiante" Type="String" />
        <asp:Parameter Name="Original_codigo_estudiante" Type="String" />
    </UpdateParameters>
</asp:ObjectDataSource>
    <br />
    <br />
</asp:Content>
