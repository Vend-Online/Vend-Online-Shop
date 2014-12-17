<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Produkt.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
<link href="Produkt-Style.css" rel="stylesheet" />
    </asp:Content>

 
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Table ID="Table1" runat="server" CssClass="Table_Master2">
        
        <asp:TableRow>
            <asp:TableCell CssClass="Table_Sub1">
                Produkt
            </asp:TableCell>
            <asp:TableCell CssClass="Table_Sub2" RowSpan="8">
                <asp:Image ID="Image1" ImageUrl="" runat="server" />
            </asp:TableCell>
            <asp:TableCell CssClass="Table_Sub1">
                Oplysninger
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
            <asp:TableCell  CssClass="Table_Sub1" RowSpan="7">
                <asp:ListBox ID="ListBox_Produkt" runat="server" OnSelectedIndexChanged="Vis_Produkt" AutoPostBack="true" Style="border-color: transparent "></asp:ListBox>
            </asp:TableCell>
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Name" runat="server" Text="Produkt navn:"></asp:Label>
            </asp:TableCell>            
        </asp:TableRow>
        
        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_Pris" runat="server" Text="Pris:"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_LevPris" runat="server" Text="Leverings pris:"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        
       <asp:TableRow>            
            <asp:TableCell CssClass="Table_Sub3">
                <asp:Label ID="Label_ProdOp" runat="server" Text="Produkt oplysninger:"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
       

    </asp:Table>

<div class="font1">
         
    <asp:Label ID="Label1" runat="server" Text="Produktoversigt"></asp:Label>
    <br/>
   

    
         </div>
    
</asp:Content>
           

