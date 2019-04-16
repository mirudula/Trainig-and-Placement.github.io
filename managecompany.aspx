<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="managecompany.aspx.cs" Inherits="managecompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>View Company Profile</center></h1>
    <table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataSourceID="AccessDataSource1" Width="971px" 
                DataKeyNames="compname" onrowdeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="compname" HeaderText="Company Name" 
                        SortExpression="compname" />
                    <asp:BoundField DataField="profi" HeaderText="Company Profile" 
                        SortExpression="profi" />
                    <asp:BoundField DataField="loc" HeaderText="Location" SortExpression="loc" />
                    <asp:BoundField DataField="domai" HeaderText="Domain" 
                        SortExpression="domai" />
                    <asp:BoundField DataField="tenth" HeaderText="10th" SortExpression="tenth" />
                    <asp:BoundField DataField="twelth" HeaderText="12th" SortExpression="twelth" />
                    <asp:BoundField DataField="cgpa" HeaderText="CGPA" SortExpression="cgpa" />
                    <asp:BoundField DataField="arre" HeaderText="Arrear" 
                        SortExpression="arre" />
                    <asp:BoundField DataField="salpack" HeaderText="Salary Package" 
                        SortExpression="salpack" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#1892BA" Font-Bold="True" ForeColor="Black" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/collegeplace.mdb" 
                SelectCommand="SELECT [compname], [profi], [loc], [domai], [tenth], [twelth], [cgpa], [arre], [salpack] FROM [compcreate] WHERE ([id] &lt;&gt; ?)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="id" Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
</table>
</asp:Content>

