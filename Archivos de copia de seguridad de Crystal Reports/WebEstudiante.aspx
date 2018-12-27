<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebEstudiante.aspx.cs" Inherits="WebBiblioteca.WebEstudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Mostrando Estudiante...</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="codigo_estudiante" DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" ReadOnly="True" SortExpression="codigo_estudiante" />
                <asp:BoundField DataField="ap_estudiante" HeaderText="ap_estudiante" SortExpression="ap_estudiante" />
                <asp:BoundField DataField="nombres_estudiante" HeaderText="nombres_estudiante" SortExpression="nombres_estudiante" />
                <asp:BoundField DataField="codigo_carrera" HeaderText="codigo_carrera" SortExpression="codigo_carrera" />
                <asp:ImageField DataImageUrlField="foto_estudiante" DataImageUrlFormatString="../fotos/{0}" HeaderText="foto_estudiante">
                </asp:ImageField>
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBycodigoestudiante" TypeName="WebBiblioteca.dsBibliotecaTableAdapters.estudianteTableAdapter" UpdateMethod="Update">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="codestudiante" QueryStringField="codestudiante" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ap_estudiante" Type="String" />
                <asp:Parameter Name="nombres_estudiante" Type="String" />
                <asp:Parameter Name="codigo_carrera" Type="String" />
                <asp:Parameter Name="foto_estudiante" Type="String" />
                <asp:Parameter Name="Original_codigo_estudiante" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
