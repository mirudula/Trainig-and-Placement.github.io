<%@ Page Title="" Language="C#" MasterPageFile="~/Coordinator.master" AutoEventWireup="true" CodeFile="staffhome.aspx.cs" Inherits="staffhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><creatr>Home Page</creatr></h1>
    <table>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="194px" ImageUrl="~/img/coordinator.png" Width="192px" />
            </td>
            <td>
                <table style="height: 121px; width: 318px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Faculty Coordinator"></asp:Label>
                            !!!</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Current Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Current Time"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align: top">
                <table>
                    <tr>
                        <td>
                            Admin Messages:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" Width="484px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="msg" HeaderText="Message to Staff" SortExpression="msg" />
                                    <asp:BoundField DataField="mdate" HeaderText="Msg Date" SortExpression="mdate" />
                                    <asp:BoundField DataField="mtime" HeaderText="Msg Time" SortExpression="mtime" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1A4356" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [msg], [mdate], [mtime] FROM [staffmsgdet]"></asp:AccessDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

