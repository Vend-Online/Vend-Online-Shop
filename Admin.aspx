<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Admin-Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Produkt" runat="server" Text="Produkter" OnClick="Produkt_Click" />
    <asp:DropDownList ID="BrugerRettighed" runat="server" OnSelectedIndexChanged="DropDownListUserrights_SelectedIndexChanged"></asp:DropDownList><asp:DropDownList ID="DropDownUserRigst" runat="server" Height="20px" OnSelectedIndexChanged="DropDownUserRigst_SelectedIndexChanged" Width="123px" AutoPostBack="True"></asp:DropDownList>
     <%--<asp:Label ID="VaelgUserRight" runat="server" Text="Vælg brugerrettighed(Husk dette skal implimenteres under Admin.aspx):"></asp:Label><asp:DropDownList ID="DropDownUserRigst" runat="server" Height="20px" OnSelectedIndexChanged="DropDownUserRigst_SelectedIndexChanged" Width="123px" AutoPostBack="True"></asp:DropDownList>--%>
            <br/> 
            <asp:Label ID="BrugernavnLabel" runat="server" Text="Indtast brugernavn:"></asp:Label><asp:TextBox ID="UserNameField" runat="server" OnTextChanged="UserNameField_TextChanged"></asp:TextBox>
            <br/>
            <asp:Label ID="AdgangskodeLabel" runat="server" Text="Indtast adgangskode:"></asp:Label><asp:TextBox ID="PWDField" TextMode="Password" runat="server" OnTextChanged="PWDField_TextChanged"></asp:TextBox>                      
            <br/>
            <asp:Label ID="CVR" runat="server" Text="Indtast CVR nr.:"></asp:Label><asp:TextBox ID="PhoneField" runat="server" OnTextChanged="PhoneField_TextChanged"></asp:TextBox>
            <br/>
            <asp:Label ID="Postnr" runat="server" Text="Indtast Postnr:"></asp:Label><asp:TextBox ID="AliasField" runat="server" OnTextChanged="AliasField_TextChanged"></asp:TextBox>
            <br/>
            <asp:Button ID="Create_Btn" runat="server" Text="Opret bruger" OnClick="Create_Click" />
            <br/>
            <asp:Label ID="TryAgainLabel" runat="server" Text=""></asp:Label>
            <br/>
    <asp:Label ID="Login_Admin" CssClass="font1" runat="server" Text=""></asp:Label>

</asp:Content>

