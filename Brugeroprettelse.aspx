<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brugeroprettelse.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Brugeroprettelse-Style.css" rel="stylesheet" />
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Return_Admin" CssClass="BtnPos1" runat="server" Text="Tilbage til admin page" OnClick="Return_Admin_Click" />

    <asp:Label ID="VaelgUserRight" CssClass="BoksPos1" runat="server" Text="Vælg brugerrettighed:"></asp:Label><asp:DropDownList ID="DropDownUserRigst" CssClass="BoksPos3" runat="server" OnSelectedIndexChanged="DropDownUserRigst_SelectedIndexChanged" AutoPostBack="False"></asp:DropDownList>
    <br />
    <asp:Label ID="BrugernavnLabel" CssClass="BoksPos2" runat="server" Text="Indtast brugernavn:"></asp:Label><asp:TextBox ID="UserNameField" CssClass="BoksPos2" runat="server" OnTextChanged="UserNameField_TextChanged"></asp:TextBox>
    <br/>
    <asp:Label ID="AdgangskodeLabel" CssClass="BoksPos2" runat="server" Text="Indtast adgangskode:"></asp:Label><asp:TextBox ID="PWDField" CssClass="BoksPos2" TextMode="Password" runat="server" OnTextChanged="PWDField_TextChanged"></asp:TextBox>                      
    <br/>
    <asp:Label ID="CVRLabel" CssClass="BoksPos2" runat="server" Text="Indtast CVR nr.:"></asp:Label><asp:TextBox ID="CVRField" CssClass="BoksPos2" runat="server" OnTextChanged="CVR_TextChanged"></asp:TextBox>
    <br/>
    <asp:Label ID="PostnrLabel" CssClass="BoksPos2" runat="server" Text="Indtast Postnr:"></asp:Label><asp:TextBox ID="PostnrField" CssClass="BoksPos2" runat="server" OnTextChanged="Postnr_TextChanged"></asp:TextBox>
    <br />
    <asp:Button ID="Create_Btn" CssClass="BtnPos2" runat="server" Text="Opret bruger" OnClick="Create_Click" />
    <asp:Label ID="TryAgainLabel" runat="server" Text=""></asp:Label>
    
    
</asp:Content>

