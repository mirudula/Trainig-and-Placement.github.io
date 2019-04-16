<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminviewperformance.aspx.cs" Inherits="adminviewperformance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>View performance of students</center></h1>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Select Course"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropcourse" runat="server" Font-Bold="True" Font-Names="Cambria">
                    <asp:ListItem>Computer Networking</asp:ListItem>
                    <asp:ListItem>Computer Engineering</asp:ListItem>
                    <asp:ListItem>Information Technology</asp:ListItem>
                    <asp:ListItem>Mechanical Engineering</asp:ListItem>
                    <asp:ListItem>Automobile Engineering</asp:ListItem>
                    <asp:ListItem>Foundary Technology</asp:ListItem>
                    <asp:ListItem>Mechatronics Engineering</asp:ListItem>
                    <asp:ListItem>Mechanical Engineering Sandwich</asp:ListItem>
                    <asp:ListItem>Electrical and Electronics Engineering</asp:ListItem>
                    <asp:ListItem>Electronics and Communication Engineering</asp:ListItem>
                    <asp:ListItem>Textile Technology</asp:ListItem>
                    <asp:ListItem>Apparel Technology</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text=" Select Year"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropyear" runat="server" Font-Bold="True" Font-Names="Cambria">
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Load Students" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Sturegno"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropregno" runat="server" DataSourceID="AccessDataSource1" DataTextField="Regno" DataValueField="Regno" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Performance</asp:LinkButton>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [Regno] FROM [studet] WHERE (([SYear] = ?) AND ([Dept] = ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dropyear" Name="SYear" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="dropcourse" Name="Dept" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Visible="False" Height="305px" Width="640px">
        <table>
            <tr>
                <td>

               
       <table style="height: 259px; width: 294px">
           <tr>
               <td>
                   <asp:Label ID="Label9" runat="server" Text="Student Name"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="lblsname" runat="server" Text="Label"></asp:Label>
               </td>
           </tr>
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
                <asp:Label ID="Label6" runat="server" Text="Reasoning"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblreasoning" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 5</td>
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Technical"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltechnical" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 5</td>
        </tr>
         <tr>
            <td bgcolor="#FFFFCC">
                <asp:Label ID="Label8" runat="server" Text="Total"></asp:Label>
            </td>
            <td bgcolor="#FFFFCC">
                <asp:Label ID="lbltotal" runat="server" Text="0" ForeColor="Red"></asp:Label>
            &nbsp;/ 20</td>
        </tr>
    </table>
                     </td>
                <td>
                    <asp:Chart ID="Chart1" runat="server" BackColor="Plum" DataSourceID="AccessDataSource2" Height="258px" Palette="EarthTones" Width="273px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="testtype" YValueMembers="mark"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY Title="Mark">
                                </AxisY>
                                <AxisX Title="Test Type">
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [testtype], [mark] FROM [resultdet] WHERE ([sturegno] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropregno" Name="sturegno" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
<br />
<asp:Label ID="lblack" runat="server" Font-Size="Medium" ForeColor="Red" Text="Student not attended the test!!!!" Visible="False"></asp:Label>
</asp:Content>

