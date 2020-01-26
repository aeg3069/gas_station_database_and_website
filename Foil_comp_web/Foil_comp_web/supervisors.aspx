<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="supervisors.aspx.cs" Inherits="supervisors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class=" contents">

    <div id="grid_view">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ssn" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal"  >
            <Columns>
                 <asp:BoundField DataField="employee_name" HeaderText="Name" SortExpression="employee_name" />
                <asp:BoundField DataField="employee_type" HeaderText="Experienced or Newbie" SortExpression="employee_type" />
                <asp:BoundField DataField="ssn" HeaderText="SSN" SortExpression="ssn" ReadOnly="True" />
                

                </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [employee_name], [employee_type], [ssn] FROM [supervisor]"></asp:SqlDataSource>
       
        </div>
</asp:Content>


