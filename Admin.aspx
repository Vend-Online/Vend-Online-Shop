<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Admin-Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Produkt" runat="server" Text="Produkter" OnClick="Produkt_Click" />  
    <br /> 
    <asp:Button ID="Brugeroprettelse" runat="server" Text="Brugeroprettelse" OnClick="Brugeroprettelse_Click" /> 
         <asp:Label ID="Login_Admin" CssClass="font1" runat="server" Text=""></asp:Label>

</asp:Content>

