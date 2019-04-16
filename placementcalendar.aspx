<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="placementcalendar.aspx.cs" Inherits="placementcalendaraspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Home page</center></h1>
    <table style="width: 226px; height: 106px;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Reg No"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblregno" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Dept"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldept" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
        
       
<table>
    <tr>
        <td>
        Placement Calendar:
        </td>
    </tr>
    <tr>
        <td>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" 
                Font-Names="Cambria" Font-Size="8pt" ForeColor="#003399" Height="175px" Width="207px" 
                onselectionchanged="Calendar1_SelectionChanged" 
                SelectedDate="02/17/2016 11:42:39" CellPadding="1">
                <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle Font-Bold="True" BackColor="#009999" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" 
                    ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        </td>
    </tr>
</table>

 </td>
        <td>
            <asp:Panel ID="Panel1" runat="server" Visible="false" Height="181px" 
                Width="281px">
                <br />
                <table style="border-color: #99CCFF;" style="height: 143px; width: 259px">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Company Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblcompname" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Location"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblloc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Domain"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbldomain" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Salary Package"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblsal" runat="server" Text="Label"></asp:Label>
                            &nbsp;per annum
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
</asp:Content>

