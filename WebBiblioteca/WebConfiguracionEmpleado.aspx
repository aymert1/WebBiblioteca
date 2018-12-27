<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="WebConfiguracionEmpleado.aspx.cs" Inherits="WebVentas.WebConfiguracionEmpleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Configuracion de Cuenta"></asp:Label>
<br />
<br />
<table style="border-color: #000010; width:49%; background-color: #101050; margin-left: 173px; margin-right: 0px;">
                <tr>
                    <td class="auto-style4" colspan="2" style="margin-left: 40px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/images/login.PNG" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="margin-left: 40px; width: 283px;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Usuario del Empleado:" style="text-align: right"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUser" runat="server" BorderStyle="Inset" Font-Size="Large" Enabled="False"></asp:TextBox>
                        &nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Nombre de Empleado:" style="text-align: right"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label12" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtNombreEmpleado" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Apellido Empleado:" style="text-align: right"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label13" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtApellidoEmpleado" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Direccion Empleado:" style="text-align: right"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtDireccionEmpleado" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Telefono Empleado:" style="text-align: right"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtTelefonoEmpleado" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefonoEmpleado" ErrorMessage="Solo se pueden ingresar 9 numeros o incluyendo el codigo del pais como (+51) en el campo telefono" ForeColor="Red" ValidationExpression="([+]\d{2})?\d{9}">*</asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="DNI de Empleado:" style="text-align: right"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label14" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtDniEmpleado" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDniEmpleado" ErrorMessage="Solo se pueden ingresar 8 digitos en el campo DNI" ForeColor="Red" ValidationExpression="\d{8}">*</asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Contraseña:" style="text-align: right"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label15" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtContraseña" runat="server" BorderStyle="Double" Font-Size="Large" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Repetir Contraseña:" style="text-align: right"></asp:Label>
                        </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label16" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtRepetirContraseña" runat="server" BorderStyle="Double" Font-Size="Large" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 283px">
                        <asp:Label ID="Label17" runat="server" ForeColor="White" Text="(*) Campos Obligatorios"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 283px">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnGuardar" runat="server" BackColor="#000099" BorderStyle="Double" Font-Bold="True" Font-Italic="False" ForeColor="White" Text="Guardar Cambios" OnClick="btnGuardar_Click" Width="198px" />
                        <br />
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 283px">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnRegresar" runat="server" BackColor="#000099" BorderStyle="Double" Font-Bold="True" Font-Italic="False" ForeColor="White" Text="Volver al Inicio" OnClick="btnRegresar_Click" Width="198px" />
                    </td>
                </tr>
            </table>

        <br />
</asp:Content>
