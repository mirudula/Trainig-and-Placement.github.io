<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="Viewprofile.aspx.cs" Inherits="Viewprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Edit Profile</center></h1>
    <table style="height: 485px; width: 409px">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Roll No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtregno" runat="server" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" BorderStyle="None"></asp:TextBox>
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
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="10th %"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttenth" runat="server" Width="70px" BorderStyle="None"></asp:TextBox>
                %</td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="12th %"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttwelth" runat="server" Width="70px" BorderStyle="None"></asp:TextBox>
                %</td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Current CGPA(%)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcgpa" runat="server" Width="70px" BorderStyle="None"></asp:TextBox>
                %</td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Standing Arrear"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstandingarrear" runat="server" Width="90px" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Arrear History"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtarrhis" runat="server" Width="90px" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Arrear Count"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtarrearcount" runat="server" Width="90px" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
        <%-- <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Create" Font-Bold="True" Font-Names="Cambria" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            &nbsp;
                <asp:Label ID="lblac" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>--%>
    </table>
</asp:Content>

