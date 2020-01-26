<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="supplier-delete.aspx.cs" Inherits="supplier_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">delete ekranı
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    
    
   
        <div class ="sign-in">
                     <div class="sign_text">
                         Supplier Id To Delete
                     </div>
                      <div class ="sign_in_info">
                          <span>Supplier Id        </span>
                          <asp:TextBox ID="txt_id_number" CssClass="textbox" runat ="server" />      
                        
                      </div>
             <div class="buttons">
                           <asp:Button ID="delete_button" CssClass="sign_in_button" Text="Delete" runat ="server"  OnClick ="delete_button_Click"/>
                          <asp:Label ID="lblResult" Text="" runat="server" />
                         
                      </div>
                     
                     


                  </div>
 

    <asp:Panel ID="pnl_signed_in" runat="server">Welkomen!
        
        <asp:Label ID="user_plate" Text="" runat ="server" />  </asp:Panel>
</asp:Content>

