<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="StuViewmarks.aspx.cs" Inherits="StuViewmarks" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
        .auto-style2 {
            width: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>View Test Performance</center></h1>
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
       
    </table>
    <table style="height: 250px; width: 622px">
        <tr>
            <td>

           
    <table style="height: 230px; width: 301px">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Verbal"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblverbal" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 5</td>
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Aptitude"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblaptitude" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 5</td>
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Reasoning"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblreasoning" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 5</td>
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Technical"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltechnical" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 5</td>
        </tr>
         <tr>
            <td bgcolor="#FFFFCC">
                <asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
            </td>
            <td bgcolor="#FFFFCC">
                <asp:Label ID="lbltotal" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 20</td>
        </tr>
    </table>
 </td>
            <td>
                <asp:Chart ID="Chart1" runat="server" BackColor="LightGray" DataSourceID="AccessDataSource1" Height="232px" Palette="Chocolate" Width="259px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="testtype" YValueMembers="mark"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisY Title="Mark Scored">
                            </AxisY>
                            <AxisX Title="Test Type">
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [testtype], [mark] FROM [resultdet] WHERE ([sturegno] = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="sturegno" SessionField="stu" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

