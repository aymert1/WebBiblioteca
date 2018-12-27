<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebPrestamoEntreFechas.aspx.cs" Inherits="WebBiblioteca.WebPrestamoEntreFechas" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="Blue" Text="Reporte de Prestamo entre dos fechas"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Fecha Inicial"></asp:Label>
    <asp:TextBox ID="txtFechaInicial" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Fecha Final"></asp:Label>
    <asp:TextBox ID="txtFechaFin" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ver Reporte" />
    <br />
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
&nbsp;<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
&nbsp;
</asp:Content>
