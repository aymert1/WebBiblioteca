<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebDevolverLibro.aspx.cs" Inherits="WebBiblioteca.WebDevolverLibro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Devolver Libro Prestado"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="digite el codigo del estudiante"></asp:Label>
    <asp:TextBox ID="txtCodEstudiante" runat="server"></asp:TextBox>
    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" style="width: 61px" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Apellidos y nombres del estudiante"></asp:Label>
    <asp:TextBox ID="txtNombresEstudiante" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Codigo de libro prestado"></asp:Label>
    <asp:TextBox ID="txtCodigoLibro" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Nombre de libro prestado"></asp:Label>
    <asp:TextBox ID="txtNombreLibro" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="btnDevolver" runat="server" Text="Devolver" />
    <br />
    <br />
</asp:Content>
