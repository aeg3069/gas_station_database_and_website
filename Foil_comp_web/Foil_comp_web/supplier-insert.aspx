<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="supplier-insert.aspx.cs" Inherits="supplier_insert" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    This is supplir insert page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    
    
   
        <div class ="sign-in">
                     <div class="sign_text">
                         Supplier Id To Insert
                     </div>
                      <div class ="sign_in_info">
                          <span>Supplier        </span>
                          <asp:TextBox ID="txt_id_number" CssClass="textbox" runat ="server" />      
                           <span>Location</span>
                          <asp:TextBox ID="txt_location"  CssClass="textbox" runat ="server" />
                      </div>
             <div class="buttons">
                           <asp:Button ID="insert_button" CssClass="sign_in_button" Text="Insert" runat ="server"  OnClick ="insert_button_Click"/>
                          <asp:Label ID="lblResult" Text="" runat="server" />
                         
                      </div>
                     
                     


                  </div>
 

    <asp:Panel ID="pnl_signed_in" runat="server">Welkomen!
        
        <asp:Label ID="user_plate" Text="" runat ="server" />  </asp:Panel>
</asp:Content>


