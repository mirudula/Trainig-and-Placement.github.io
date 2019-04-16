<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="attendtest.aspx.cs" Inherits="attendtest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Online test</center></h1>
    <table style="height: 154px; width: 323px">
        <tr>
            <td>
                Welcome

            </td>
            <td>
                Student!!!
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Roll No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtregno" runat="server" BorderStyle="None" Font-Bold="True" Font-Names="Cambria"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" BorderStyle="None" Font-Bold="True" Font-Names="Cambria"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblcourse" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblyear" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        </table>
    <table style="height: 113px; width: 278px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Test Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="droptesttype" runat="server" BackColor="#3333CC" Font-Bold="True" Font-Names="Cambria" ForeColor="White">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Verbal</asp:ListItem>
                    <asp:ListItem>Aptitude</asp:ListItem>
                    <asp:ListItem>Reasoning</asp:ListItem>
                    <asp:ListItem>Technical Development</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="View" Font-Bold="True" Font-Names="Cambria" Width="61px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" Width="71px" />
            </td>
        </tr>
    </table>
</asp:Content>

