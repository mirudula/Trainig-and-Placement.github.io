<%@ Page Title="" Language="C#" MasterPageFile="~/Coordinator.master" AutoEventWireup="true" CodeFile="messagingstudent.aspx.cs" Inherits="messagingstudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><creatr>Messaging Students</creatr></h1>
     <table style="height: 158px; width: 526px">
          <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
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
                Message to Student
            </td>
            <td>
                <asp:TextBox ID="txtmsg" runat="server" Height="105px" TextMode="MultiLine" Width="339px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Send" Font-Bold="True" Font-Names="Cambria" Width="61px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="AccessDataSource1" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" Width="734px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="msg" HeaderText="Message To Student" SortExpression="msg" />
                        <asp:BoundField DataField="mdate" HeaderText="Msg Date" SortExpression="mdate" />
                        <asp:BoundField DataField="mtime" HeaderText="Msg Time" SortExpression="mtime" />
                        <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#1A3C4E" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [ID], [msg], [mdate], [mtime], [dept] FROM [stumsgdet]"></asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

