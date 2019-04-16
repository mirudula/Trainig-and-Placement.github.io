<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="downloadquespaper.aspx.cs" Inherits="downloadquespaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Download Question Paper</center></h1>
    <table style="width: 380px">
        <tr>
             <td>
                <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropcompname" runat="server" DataSourceID="AccessDataSource1" DataTextField="compname" DataValueField="compname" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [compname] FROM [compcreate] ORDER BY [id]"></asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="View Ques Paper" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="false">
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="AccessDataSource2" GridLines="Vertical" Width="517px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="fname" HeaderText="File name" SortExpression="fname" />
                        <asp:BoundField DataField="uplodate" HeaderText="Uploaded Date" SortExpression="uplodate" />
                        <asp:BoundField DataField="uplotime" HeaderText="Uploaded Time" SortExpression="uplotime" />
                        <asp:BoundField DataField="testtype" HeaderText="Test Type" SortExpression="testtype" />
                        <asp:CommandField ShowSelectButton="True" />
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
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [fname], [uplodate], [uplotime], [testtype] FROM [quesdetails] WHERE ([compname] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dropcompname" Name="compname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
        <table>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/img/download.gif" Width="128px" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server">Right Click and Save</asp:HyperLink>
                </td>
            </tr>
        </table>
        </asp:Panel>
</asp:Content>

