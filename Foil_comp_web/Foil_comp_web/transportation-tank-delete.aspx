<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="transportation-tank-delete.aspx.cs" Inherits="transportation_tank_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">transportation-tank-delete.aspx
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:Panel ID="pnl_sign_in" runat="server">
    
    <div class ="sign-in">
                     <div class="sign_text">
                         Sign In
                     </div>
                      <div class ="sign_in_info">
                          <span>Tank Id        </span>
                          <asp:TextBox ID="txt_id_number" CssClass="textbox" runat ="server" />

                       

                      </div>
                      <div class="buttons">

                      <asp:Button ID="register_button" CssClass="register_button" Text="Delete" runat ="server" OnClick="register_button_Click" />
                          <asp:Label ID="lblResult" Text="" runat="server" />
                         
                      </div>
                     


                  </div>
        </asp:Panel>

    <asp:Panel ID="pnl_signed_in" runat="server">
        <div>



        </div>
        
        <asp:Label ID="user_plate" Text="" runat ="server" />  </asp:Panel>
</asp:Content>

