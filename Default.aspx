<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="Default-StyleSheet.css" rel="stylesheet" />
    <div class="font1">
        <asp:Label ID="Velkomst_Label" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Login_Button" CssClass="BtnPos1" runat="server" Text="Login" OnClick="Login_Button_Click" />
        <asp:Button ID="Kontakt_Button" CssClass="BtnPos2" runat="server" Text="Kontakt" OnClick="Kontakt_Button_Click" />
                       
    </div>
     <div class="font2">
        <asp:Label ID="Partner_Label" runat="server" Text="Label"></asp:Label>
    </div>
    <asp:Image ID="Image1" runat="server" />
    
        
    </asp:Content>

