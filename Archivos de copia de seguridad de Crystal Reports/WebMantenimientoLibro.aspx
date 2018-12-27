<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebMantenimientoLibro.aspx.cs" Inherits="WebBiblioteca.WebMantenimientoLibro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" ForeColor="#0066FF" Text="Mantenimiento de Libro"></asp:Label>
</p>
<p style="margin-left: 40px">
    <asp:Label ID="Label2" runat="server" Text="Codigo de Libro :"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
</p>
<p style="margin-left: 40px">
    <asp:Label ID="Label3" runat="server" Text="Titulo del Libro: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTilulo" runat="server"></asp:TextBox>
</p>
<p style="margin-left: 40px">
    <asp:Label ID="Label4" runat="server" Text="Autor del libro :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAutor" runat="server"></asp:TextBox>
</p>
<p style="margin-left: 40px">
    <asp:Label ID="Label5" runat="server" Text="Resumen del libro:"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="txtResumen" runat="server"></asp:TextBox>
</p>
<p style="margin-left: 40px">
    <asp:Label ID="Label6" runat="server" Text="Portada del Libro :"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtPortada" runat="server"></asp:TextBox>
</p>
<p style="margin-left: 40px">
    <asp:Label ID="Label7" runat="server" Text="Stock libro:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
</p>
<p style="margin-left: 40px">
    <asp:Button ID="btnNuevo" runat="server" OnClick="btnNuevo_Click" Text="Nuevo" />
    &nbsp;<asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
    &nbsp;<asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
    &nbsp;<asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
</p>
<p style="margin-left: 40px">
    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
</p>
<p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
