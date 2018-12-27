<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebEmpleado.aspx.cs" Inherits="WebVentas.WebEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>    
    <link href="estilo.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-right: 403px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="global" class="auto-style1">
        <div id="cabecera">
           <h2><font size="10">Bazar &quot;The Hand Of Tyr&quot;</font></h2>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
        <div id="menu">

        </div>
        <div id="contenido">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="White" Text="Registrarse en el SIstema"></asp:Label>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;<table style="border-color: #000010; width:49%; background-color: #101050; margin-left: 157px; margin-right: 0px;">
                <tr>
                    <td class="auto-style4" colspan="2" style="margin-left: 40px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/login.PNG" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="margin-left: 40px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Usuario del Empleado:" style="text-align: right"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label11" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtUser" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Solo puede ingresar 4 digitos en el campo codigo de empleado" ForeColor="Red" ValidationExpression="\d{4}">*</asp:RegularExpressionValidator>
                        &nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style3">
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
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Apellido Empleado:" style="text-align: right"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label13" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtApellidoEmpleado" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Direccion Empleado:" style="text-align: right"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtDireccionEmpleado" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
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
                    <td class="auto-style3">
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
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bernard MT Condensed" ForeColor="White" Text="Contraseña:" style="text-align: right"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label15" runat="server" ForeColor="#CCFFCC" Text="*"></asp:Label>
                        <asp:TextBox ID="txtContraseña" runat="server" BorderStyle="Double" Font-Size="Large" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
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
                    <td class="auto-style3">
                        <asp:Label ID="Label17" runat="server" ForeColor="White" Text="(*) Campos Obligatorios"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnRegistrarse" runat="server" BackColor="#000099" BorderStyle="Double" Font-Bold="True" Font-Italic="False" ForeColor="White" Text="Registrarse" OnClick="btnRegistrarse_Click" />
                        <br />
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnRegresar" runat="server" BackColor="#000099" BorderStyle="Double" Font-Bold="True" Font-Italic="False" ForeColor="White" Text="Regresar a ventana de Login" OnClick="btnRegresar_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <div id="pie">

        </div>
    </div>
    </form>
</body>
</html>