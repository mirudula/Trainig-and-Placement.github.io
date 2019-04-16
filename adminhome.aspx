<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
    <h1><center>Home page</center></h1> 
    <table style="height: 361px; width: 479px">
        
    <tr>
        <td valign="top">
            <asp:Image ID="Image1" runat="server" Height="274px" 
                ImageUrl="~/img/Admin-icon.png" Width="262px" />
        </td>
        <td>
        Current Date: 
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Current Time
            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

