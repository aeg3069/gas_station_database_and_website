﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="transportation-tank-insert.aspx.cs" Inherits="transportation_tank_insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">transportation-tank-insert
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:Panel ID="pnl_sign_in" runat="server">
    
    <div class ="sign-in">
                     <div class="sign_text">
                         Sign In
                     </div>
                      <div class ="sign_in_info">
                          <span>Transport Id        </span>
                          <asp:TextBox ID="txt_id_number" CssClass="textbox" runat ="server" />
                          <div>
                               <span>Tank Id</span>
                          <asp:DropDownList ID="ddl_tank" CssClass="dropdownlist" runat ="server" />
                          </div>
                           <div>
                               <span>Supplier Id</span>
                          <asp:DropDownList ID="ddl_suplier" CssClass="dropdownlist" runat ="server" />
                          </div>
                       

                      </div>
                      <div class="buttons">
                      <asp:Button ID="register_button" CssClass="register_button" Text="Insert" runat ="server" OnClick="register_button_Click" />
                          <asp:Label ID="lblResult" Text="" runat="server" />
                         
                      </div>
                     


                  </div>
        </asp:Panel>

    <asp:Panel ID="pnl_signed_in" runat="server">

        
        <asp:Label ID="user_plate" Text="" runat ="server" />  </asp:Panel>
</asp:Content>

