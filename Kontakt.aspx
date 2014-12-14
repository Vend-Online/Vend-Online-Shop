<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kontakt.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Kontakt-Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Velkomst_Label" CssClass="Velkomst-style" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Info_Label" CssClass="Info-style" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Kontakt_Label" CssClass="Kontakt-style" runat="server" Text=""></asp:Label>
</asp:Content>


