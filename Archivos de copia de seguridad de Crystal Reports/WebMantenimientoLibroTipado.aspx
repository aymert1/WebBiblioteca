<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebMantenimientoLibroTipado.aspx.cs" Inherits="WebBiblioteca.WebMantenimientoLibroTipado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Mantenimiento Libro"></asp:Label>
<br />
<br />
<br />
<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tituloLibro" DataValueField="codigoLibro" AutoPostBack="True">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigoLibro], [tituloLibro] FROM [libro]"></asp:SqlDataSource>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigoLibro" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="codigoLibro" HeaderText="codigoLibro" ReadOnly="True" SortExpression="codigoLibro" />
        <asp:BoundField DataField="autorLibro" HeaderText="autorLibro" SortExpression="autorLibro" />
        <asp:BoundField DataField="ResumenLibro" HeaderText="ResumenLibro" SortExpression="ResumenLibro" />
        <asp:BoundField DataField="tituloLibro" HeaderText="tituloLibro" SortExpression="tituloLibro" />
        <asp:BoundField DataField="portadaLibro" HeaderText="portadaLibro" SortExpression="portadaLibro" />
        <asp:BoundField DataField="stockLibro" HeaderText="stockLibro" SortExpression="stockLibro" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [libro] WHERE [codigoLibro] = @codigoLibro" InsertCommand="INSERT INTO [libro] ([codigoLibro], [tituloLibro], [autorLibro], [ResumenLibro], [portadaLibro], [stockLibro]) VALUES (@codigoLibro, @tituloLibro, @autorLibro, @ResumenLibro, @portadaLibro, @stockLibro)" SelectCommand="SELECT [codigoLibro], [tituloLibro], [autorLibro], [ResumenLibro], [portadaLibro], [stockLibro] FROM [libro] WHERE ([codigoLibro] = @codigoLibro)" UpdateCommand="UPDATE [libro] SET [tituloLibro] = @tituloLibro, [autorLibro] = @autorLibro, [ResumenLibro] = @ResumenLibro, [portadaLibro] = @portadaLibro, [stockLibro] = @stockLibro WHERE [codigoLibro] = @codigoLibro">
        <DeleteParameters>
            <asp:Parameter Name="codigoLibro" Type="String" />
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
            <asp:ControlParameter ControlID="DropDownList1" Name="codigoLibro" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="tituloLibro" Type="String" />
            <asp:Parameter Name="autorLibro" Type="String" />
            <asp:Parameter Name="ResumenLibro" Type="String" />
            <asp:Parameter Name="portadaLibro" Type="String" />
            <asp:Parameter Name="stockLibro" Type="Int32" />
            <asp:Parameter Name="codigoLibro" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
</asp:Content>
