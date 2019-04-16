<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="changepwdstu.aspx.cs" Inherits="changepwdstu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 162px; width: 341px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtretype" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" 
                Font-Names="Cambria" onclick="Button1_Click"/>
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                Font-Names="Cambria" />
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="lblerr" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>
        </td>
        <td>
         
        </td>
    </tr>
</table>
</asp:Content>

