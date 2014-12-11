<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:TextBox ID="Username" runat="server" Placeholder="Username" OnTextChanged="Username_TextChanged"></asp:TextBox>
    <br />
    <asp:TextBox ID="Password" runat="server" Placeholder="Password" TextMode="Password" OnTextChanged="Password_TextChanged"></asp:TextBox>
    <br />
    <asp:Button ID="Loginpage_loginbutton" runat="server" Text="Login" OnClick="Loginpage_loginbutton_Click" />
</asp:Content>

