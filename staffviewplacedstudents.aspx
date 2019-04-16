<%@ Page Title="" Language="C#" MasterPageFile="~/Coordinator.master" AutoEventWireup="true" CodeFile="staffviewplacedstudents.aspx.cs" Inherits="staffviewplacedstudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>View Placed Students</center></h1>
     <table bgcolor="#99CCFF" style="width: 579px; height: 49px">
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Company Wise" GroupName="placed" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Course Wise" GroupName="placed" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Select Company Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dropcompname" runat="server" DataSourceID="AccessDataSource1" DataTextField="compname" DataValueField="compname" Font-Bold="True" Font-Names="Cambria" AutoPostBack="True"></asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [compname] FROM [compcreate] ORDER BY [id]"></asp:AccessDataSource>
                </td>
            </tr>

        </table>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AccessDataSource2" ForeColor="Black" Width="651px">
                        <Columns>
                            <asp:BoundField DataField="regno" HeaderText="Roll No" SortExpression="regno" />
                            <asp:BoundField DataField="sname" HeaderText="Student Name" SortExpression="sname" />
                            <asp:BoundField DataField="cgpa" HeaderText="Mark %" SortExpression="cgpa" />
                            <asp:BoundField DataField="compname" HeaderText="Company Name" SortExpression="compname">
                            <ItemStyle BackColor="#CCCCCC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dept" HeaderText="Course" SortExpression="dept" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [regno], [sname], [cgpa], [compname], [dept] FROM [placedlist] WHERE ([compname] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropcompname" Name="compname" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="false">
         <table>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Select Course Name"></asp:Label>
                </td>
                <td>
                     <asp:DropDownList ID="dropcoursename" runat="server" Font-Bold="True" Font-Names="Cambria" AutoPostBack="True">
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
        </table>
         <table>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AccessDataSource3" ForeColor="Black" Width="651px">
                        <Columns>
                            <asp:BoundField DataField="regno" HeaderText="Roll No" SortExpression="regno" />
                            <asp:BoundField DataField="sname" HeaderText="Student Name" SortExpression="sname" />
                            <asp:BoundField DataField="dept" HeaderText="Course" SortExpression="dept">
                            <ItemStyle BackColor="#CCCCCC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cgpa" HeaderText="Mark %" SortExpression="cgpa" />
                            <asp:BoundField DataField="compname" HeaderText="Company" SortExpression="compname" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [regno], [sname], [dept], [cgpa], [compname] FROM [placedlist] WHERE ([dept] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropcoursename" Name="dept" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

