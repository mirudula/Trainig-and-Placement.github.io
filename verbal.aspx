<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="verbal.aspx.cs" Inherits="verbal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 89px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        &nbsp;&nbsp;&nbsp; &lt;&lt;&lt;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/attendtest.aspx">Back to test selection</asp:HyperLink>
    &nbsp;</div>
    <br />
    <table style="height: 93px; width: 315px" bgcolor="#CCCCCC">
        <tr>
            <td class="auto-style1">
                Welcome
            </td>
            <td>
                <asp:Label ID="lblstu" runat="server" Text="Label"></asp:Label>
            &nbsp;-
                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Test Type"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltest" runat="server" Text="Label" ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="height: 26px; width: 1047px">
        <tr>
            <td>
               1. <asp:Label ID="lblq1" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
            &nbsp;<asp:Label ID="ans1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="height: 86px; width: 859px">
        <tr>
            <td>
                <asp:RadioButton ID="radioq1a1" runat="server" GroupName="q1" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq1a2" runat="server" GroupName="q1" />
              
            </td>
        </tr>
         <tr>
            <td>
                <asp:RadioButton ID="radioq1a3" runat="server" GroupName="q1" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq1a4" runat="server" GroupName="q1" />
              
            </td>
        </tr>
    </table>
     <table style="height: 26px; width: 1047px">
        <tr>
            <td>
                2. <asp:Label ID="lblq2s" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
                <asp:Label ID="ans2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="height: 86px; width: 859px">
        <tr>
            <td>
                <asp:RadioButton ID="radioq2a1" runat="server" GroupName="q2" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq2a2" runat="server" GroupName="q2" />
              
            </td>
        </tr>
         <tr>
            <td>
                <asp:RadioButton ID="radioq2a3" runat="server" GroupName="q2" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq2a4" runat="server" GroupName="q2" />
              
            </td>
        </tr>
    </table>
     <table style="height: 26px; width: 1047px">
        <tr>
            <td>
                3. <asp:Label ID="lblq3" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
                <asp:Label ID="ans3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="height: 86px; width: 859px">
        <tr>
            <td>
                <asp:RadioButton ID="radioq3a1" runat="server" GroupName="q3" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq3a2" runat="server" GroupName="q3" />
              
            </td>
        </tr>
         <tr>
            <td>
                <asp:RadioButton ID="radioq3a3" runat="server" GroupName="q3" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq3a4" runat="server" GroupName="q3" />
              
            </td>
        </tr>
    </table> 
     <table style="height: 26px; width: 1047px">
        <tr>
            <td>
                4. <asp:Label ID="lblq4" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
                <asp:Label ID="ans4" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="height: 86px; width: 859px">
        <tr>
            <td>
                <asp:RadioButton ID="radioq4a1" runat="server" GroupName="q4" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq4a2" runat="server" GroupName="q4" />
              
            </td>
        </tr>
         <tr>
            <td>
                <asp:RadioButton ID="radioq4a3" runat="server" GroupName="q4" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq4a4" runat="server" GroupName="q4" />
              
            </td>
        </tr>
    </table> 
    <table style="height: 26px; width: 1047px">
        <tr>
            <td>
                5. <asp:Label ID="lblq5" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
                <asp:Label ID="ans5" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="height: 86px; width: 859px">
        <tr>
            <td>
                <asp:RadioButton ID="radioq5a1" runat="server" GroupName="q5" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq5a2" runat="server" GroupName="q5" />
              
            </td>
        </tr>
         <tr>
            <td>
                <asp:RadioButton ID="radioq5a3" runat="server" GroupName="q5" />
              
            </td>
            <td>
                <asp:RadioButton ID="radioq5a4" runat="server" GroupName="q5" />
              
            </td>
        </tr>
    </table> 
    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit Answer" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
</asp:Content>

