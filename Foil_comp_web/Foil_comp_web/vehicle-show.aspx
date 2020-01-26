<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicle-show.aspx.cs" Inherits="vehicle_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">vehicle show page<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="plate" DataSourceID="SqlDataSource2" GridLines="Horizontal">
    <Columns>
        <asp:BoundField DataField="plate" HeaderText="Plate" ReadOnly="True" SortExpression="plate" />
        <asp:BoundField DataField="pumpId_of_vehicle" HeaderText="Pump Id" SortExpression="pumpId_of_vehicle" />
        <asp:BoundField DataField="stationId_of_vehicle" HeaderText="Station Id" SortExpression="stationId_of_vehicle" />
        <asp:BoundField DataField="size_of_vehicle" HeaderText="Size" SortExpression="size_of_vehicle" />
        <asp:BoundField DataField="vehicle_length_meter" HeaderText="Length(meter)" SortExpression="vehicle_length_meter" />
        <asp:BoundField DataField="vehicle_width_meter" HeaderText="Width(meter)" SortExpression="vehicle_width_meter" />
        <asp:BoundField DataField="fuel_type" HeaderText="Fuel Type" SortExpression="fuel_type" />
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [vehicle]"></asp:SqlDataSource>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">vehicle show page
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [transportId], [tankId], [supplierId], [fuel_type_trans], [capacity_lt_trans], [cost_of_liter], [total_price] FROM [transportation_tank]"></asp:SqlDataSource>
&nbsp;
</asp:Content>

