<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="coordinatormsgs.aspx.cs" Inherits="coordinatormsgs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>View Co-ordinator Messages</center></h1>
    <table style="width: 235px; height: 79px">
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
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="AccessDataSource1" GridLines="Vertical" Width="685px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="msg" HeaderText="Message To Students" SortExpression="msg" />
                        <asp:BoundField DataField="mdate" HeaderText="Msg date" SortExpression="mdate" />
                        <asp:BoundField DataField="mtime" HeaderText="Msg time" SortExpression="mtime" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [msg], [mdate], [mtime] FROM [stumsgdet] WHERE ([dept] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblcourse" Name="dept" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

