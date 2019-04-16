<%@ Page Title="" Language="C#" MasterPageFile="~/Coordinator.master" AutoEventWireup="true" CodeFile="placementtips.aspx.cs" Inherits="placementtips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><creatr>Create Placement Tips</creatr></h1>
     <table style="height: 181px; width: 604px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Placement Tips"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="146px" Width="383px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ControlToValidate="TextBox1" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter placement tips</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Send" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="college" />
            </td>
             <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
</asp:Content>


