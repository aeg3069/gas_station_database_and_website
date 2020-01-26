<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   


             
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class=" contents">
  <!--  -->  <asp:Panel ID="Panel1" runat="server"> 
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="customerId" HeaderText="Customer Id" ReadOnly="True" SortExpression="customerId" />
                <asp:BoundField DataField="vehicle_plate" HeaderText="Vehicle Plate" SortExpression="vehicle_plate" />
                <asp:BoundField DataField="given_date" HeaderText="Given Date" SortExpression="given_date" />
                <asp:BoundField DataField="last_update_time" HeaderText="Last Update Time" SortExpression="last_update_time" />
                <asp:BoundField DataField="number_of_credits" HeaderText="Credits" SortExpression="number_of_credits" />
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
           <!-- --> </asp:Panel> 
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [customerId], [vehicle_plate], [given_date], [last_update_time], [number_of_credits] FROM [foil_card]"></asp:SqlDataSource>
        </div>
   

</asp:Content> 


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:Panel ID="pnl_sign_in" runat="server">
    
    <div class ="sign-in">
                     <div class="sign_text">
                         Sign In
                     </div>
                      <div class ="sign_in_info">
                          <span>Customer Id        </span>
                          <asp:TextBox ID="txt_id_number" CssClass="textbox" runat ="server" />
                          <div>
                               <span>Vehicle Plate</span>
                        <!--  <asp:TextBox ID="txt_plate"  CssClass="textbox" runat ="server" /> -->
                          <asp:DropDownList ID="ddl_plate" CssClass="dropdownlist" runat ="server" />
                          </div>
                         
                          <span>Password</span>
                          <asp:TextBox ID="txt_password"  TextMode="Password" CssClass="textbox" runat ="server" />

                      </div>
                      <div class="buttons">
                           <asp:Button ID="sign_in_button" CssClass="sign_in_button" Text="Sign In" runat ="server"  OnClick ="sign_in_button_Click"/>
                      <asp:Button ID="register_button" CssClass="register_button" Text="Register" runat ="server" OnClick="register_button_Click" />
                          <asp:Label ID="lblResult" Text="" runat="server" />
                         
                      </div>
                     


                  </div>
        </asp:Panel>

    <asp:Panel ID="pnl_signed_in" runat="server">Welcome !
        <div>

              <asp:Button ID="sign_out_button" CssClass="sign_in_button" Text="Sign Out"  runat ="server" OnClick="sign_out_button_Click"/>      

        </div>
        
        <asp:Label ID="user_plate" Text="" runat ="server" />  </asp:Panel>
</asp:Content>



