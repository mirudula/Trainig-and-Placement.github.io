<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="Viewplacementtips.aspx.cs" Inherits="Viewplacementtips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>View Placement Tips</center></h1>
      <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="Horizontal" Width="729px">
                    <Columns>
                        <asp:BoundField DataField="placetips" HeaderText="Placement Tips" SortExpression="placetips" />
                        <asp:BoundField DataField="uplodate" HeaderText="Uploaded Date" SortExpression="uplodate" />
                        <asp:BoundField DataField="uplotime" HeaderText="Uploaded Time" SortExpression="uplotime" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#256B90" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [placetips], [uplodate], [uplotime] FROM [placementtips]"></asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

