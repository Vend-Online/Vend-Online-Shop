<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Login-Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <asp:TextBox ID="Username" cssclass="BoksPos1" Width="200" runat="server" Placeholder="Username" OnTextChanged="Username_TextChanged"></asp:TextBox>
    <br />
    <asp:TextBox ID="Password" cssclass="BoksPos2" Width="200" runat="server" Placeholder="Password" TextMode="Password" OnTextChanged="Password_TextChanged"></asp:TextBox>
    <br />
    <asp:Button ID="Loginpage_loginbutton" cssclass="BtnPos1" Width="200" runat="server" Text="Login" OnClick="Loginpage_loginbutton_Click" />
    <asp:Button ID="Forside_Button" CssClass="BtnPos2" runat="server" Text="Forside" OnClick="Forside_Button_Click" />

</asp:Content>

