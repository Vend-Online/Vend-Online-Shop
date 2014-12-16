<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Produkt.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:TableRow>
            <asp:TableCell CssClass="Table_Sub1">
                Products
            </asp:TableCell>
            <asp:TableCell CssClass="Table_Sub2" RowSpan="8">
                <%--<asp:Image ID="Image1" ImageUrl="" runat="server" />--%>
            </asp:TableCell>
            <asp:TableCell CssClass="Table_Sub1">
                Specifications
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
            <asp:TableCell  CssClass="Table_Sub1" RowSpan="7">
             <asp:ListBox ID="ListBox_Products" runat="server" OnSelectedIndexChanged="Show_Product" AutoPostBack="False" Style="border-color: transparent "></asp:ListBox>
            </asp:TableCell>
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Name" runat="server" Text="Product name:"></asp:Label>
            </asp:TableCell>            
        </asp:TableRow>
        
        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Price" runat="server" Text="Price:"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_InStock" runat="server" Text="In stock:"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Weight" runat="server" Text="Weight:"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Height" runat="server" Text="Height:"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Width" runat="server" Text="Width:"></asp:Label>
            </asp:TableCell>            
        </asp:TableRow>

        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Depth" runat="server" Text="Depth:"></asp:Label>
            </asp:TableCell>            
        </asp:TableRow>

    </asp:Table>
</asp:Content>


