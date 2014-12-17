<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brugeroprettelse.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="VaelgUserRight" runat="server" Text="Vælg brugerrettighed:"></asp:Label><asp:DropDownList ID="DropDownUserRigst" runat="server" Height="20px" OnSelectedIndexChanged="DropDownUserRigst_SelectedIndexChanged" Width="123px" AutoPostBack="False"></asp:DropDownList>
            <br/>             
            <asp:Label ID="BrugernavnLabel" runat="server" Text="Indtast brugernavn:"></asp:Label><asp:TextBox ID="UserNameField" runat="server" OnTextChanged="UserNameField_TextChanged"></asp:TextBox>
            <br/>
            <asp:Label ID="AdgangskodeLabel" runat="server" Text="Indtast adgangskode:"></asp:Label><asp:TextBox ID="PWDField" TextMode="Password" runat="server" OnTextChanged="PWDField_TextChanged"></asp:TextBox>                      
            <br/>
            <asp:Label ID="CVRLabel" runat="server" Text="Indtast CVR nr.:"></asp:Label><asp:TextBox ID="CVRField" runat="server" OnTextChanged="CVR_TextChanged"></asp:TextBox>
            <br/>
            <asp:Label ID="PostnrLabel" runat="server" Text="Indtast Postnr:"></asp:Label><asp:TextBox ID="PostnrField" runat="server" OnTextChanged="Postnr_TextChanged"></asp:TextBox>
            <br/>
            <asp:Button ID="Create_Btn" runat="server" Text="Opret bruger" OnClick="Create_Click" />
            <br/>
            <asp:Label ID="TryAgainLabel" runat="server" Text=""></asp:Label>
            <br/>
    <asp:Button ID="Return_Admin" runat="server" Text="Tilbage til admin page" OnClick="Return_Admin_Click" />
</asp:Content>

