<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="transportation-tank-show.aspx.cs" Inherits="transportation_tank_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="transportId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <Columns>
        <asp:BoundField DataField="transportId" HeaderText="ID" ReadOnly="True" SortExpression="transportId" />
        <asp:BoundField DataField="tankId" HeaderText="Tank" SortExpression="tankId" />
        <asp:BoundField DataField="supplierId" HeaderText="Supplier" SortExpression="supplierId" />
        <asp:BoundField DataField="fuel_type_trans" HeaderText="Fuel Type" SortExpression="fuel_type_trans" />
        <asp:BoundField DataField="capacity_lt_trans" HeaderText="Capacity(liter)" SortExpression="capacity_lt_trans" />
        <asp:BoundField DataField="cost_of_liter" HeaderText="Cost of Liter" SortExpression="cost_of_liter" />
        <asp:BoundField DataField="total_price" HeaderText="Total Price" ReadOnly="True" SortExpression="total_price" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#336666" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [transportId], [tankId], [supplierId], [fuel_type_trans], [capacity_lt_trans], [cost_of_liter], [total_price] FROM [transportation_tank]"></asp:SqlDataSource>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

