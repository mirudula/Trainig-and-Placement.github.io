<%@ Page Title="" Language="C#" MasterPageFile="~/Coordinator.master" AutoEventWireup="true" CodeFile="uploadquespaper.aspx.cs" Inherits="uploadquespaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 363px;
        }
        .auto-style3 {
            width: 183px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><creatr>Upload Question Paper</creatr></h1>
    <table style="height: 148px; width: 436px">
        
        <tr>
            <td>
                 <table style="width: 468px; height: 238px;">
                      <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropcompname" runat="server" DataSourceID="AccessDataSource1" DataTextField="compname" DataValueField="compname" Font-Bold="True" Font-Names="Cambria" AutoPostBack="True" OnSelectedIndexChanged="dropcompname_SelectedIndexChanged"></asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [compname] FROM [compcreate] ORDER BY [id]"></asp:AccessDataSource>
            </td>
        </tr>
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
                <asp:Label ID="Label2" runat="server" Text="Test Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropcomptype" runat="server" Font-Bold="True" Font-Names="Cambria">
                    <asp:ListItem>Technical</asp:ListItem>
                    <asp:ListItem>Aptitude</asp:ListItem>
                    <asp:ListItem>General</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Upload Question Paper"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Upload" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" />
            </td>
           
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblack" Visible="False" runat="server" Text="Questions Uploaded!!!!" ForeColor="Red"></asp:Label>
            </td>
            <td>
               
            </td>
        </tr>
    </table>
            </td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <table bgcolor="#99CCFF" style="height: 243px; width: 508px">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label5" runat="server" Text="Company Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblcompname" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label6" runat="server" Text="Company Profile"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblprofile" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label7" runat="server" Text="Company Type"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblcomptype" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label8" runat="server" Text="Hiring Course"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblcourse" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label9" runat="server" Text="Year" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblyear" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                Uploaded Questions Details:
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AccessDataSource2" ForeColor="Black" GridLines="Horizontal" Width="765px">
                    <Columns>
                        <asp:BoundField DataField="compname" HeaderText="Company Name" SortExpression="compname" />
                        <asp:BoundField DataField="testtype" HeaderText="Test Type" SortExpression="testtype" />
                        <asp:BoundField DataField="fname" HeaderText="Filename" SortExpression="fname" />
                        <asp:BoundField DataField="uplodate" HeaderText="Uploaded Date" SortExpression="uplodate" />
                        <asp:BoundField DataField="uplotime" HeaderText="Uploaded Time" SortExpression="uplotime" />
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
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/collegeplace.mdb" SelectCommand="SELECT [compname], [testtype], [fname], [uplodate], [uplotime] FROM [quesdetails] WHERE ([compname] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dropcompname" Name="compname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

