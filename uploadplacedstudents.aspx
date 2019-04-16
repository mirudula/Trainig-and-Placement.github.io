<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="uploadplacedstudents.aspx.cs" Inherits="uploadplacedstudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Create Placed Students</center></h1>
    <table style="height: 254px; width: 744px;">
    <tr>
        <td class="style1">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/placed.png" Height="266px" Width="402px" />
        </td>
        <td>
       
<table style="width: 435px; height: 239px;">
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Select Company"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="AccessDataSource1" DataTextField="compname" 
                DataValueField="compname" Font-Bold="True" Font-Names="Cambria">
            </asp:DropDownList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/collegeplace.mdb" 
                SelectCommand="SELECT [compname] FROM [compcreate]"></asp:AccessDataSource>
        </td>
       
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="Enter Student Roll No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtregno" runat="server" AutoPostBack="True" 
                ontextchanged="txtregno_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ControlToValidate="txtregno" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter Rollno</asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td class="style2">
            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblname" runat="server" Text="............"></asp:Label>
        </td>
    </tr>
     <tr>
        <td class="style2">
            <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldept" runat="server" Text="............"></asp:Label>
        </td>
    </tr>
     <tr>
        <td class="style2">
            <asp:Label ID="Label5" runat="server" Text="CGPA"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblcgpa" runat="server" Text="............"></asp:Label>
        </td>
    </tr>
     <tr>
        <td class="style2">
            <asp:Button ID="Button1" runat="server" Text="Confirm Placed" 
                BackColor="#333399" Font-Bold="True" Font-Names="Cambria" 
                onclick="Button1_Click" ValidationGroup="college" ForeColor="White" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#333399" 
                Font-Bold="True" Font-Names="Cambria" ForeColor="White" />
        </td>
    </tr>
</table>

 
        </td>
    </tr>
</table>
</asp:Content>

