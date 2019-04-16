<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="createcompany.aspx.cs" Inherits="createcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Create Company Profile</center></h1>
    <table>
    <tr>
        <td>
        
      
    <table style="height: 439px; width: 456px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcompname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ControlToValidate="txtcompname" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter companyname</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Company Profile"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtprofile" runat="server" Height="42px" TextMode="MultiLine" 
                Width="194px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ControlToValidate="txtprofile" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter company profile</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label19" runat="server" Text="Test Type"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="radiomnc" runat="server" Text="MNC" GroupName="comp" Checked="true" />
            <asp:RadioButton ID="radiononmnc" runat="server" Text="Non MNC" GroupName="comp" />
            <asp:RadioButton ID="radiobpo" runat="server" Text="BPO" GroupName="comp" />
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtloc" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ControlToValidate="txtloc" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter location</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Domain"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdomain" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="*" ControlToValidate="txtdomain" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter domain</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label17" runat="server" Text="Course"></asp:Label>
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
         <%--   <asp:CheckBox ID="chkcse" runat="server" Text="BCA" />
            <asp:CheckBox ID="chkece" runat="server" Text="BSC" />
            <asp:CheckBox ID="chkeee" runat="server" Text="MCA" />
            <asp:CheckBox ID="chkmech" runat="server" Text="MSC" />
            <asp:CheckBox ID="chkcivil" runat="server" ForeColor="White" Visible="False" />--%>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label18" runat="server" Text="Year"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                Font-Names="Cambria">
                <asp:ListItem>1st Year</asp:ListItem>
                <asp:ListItem>2nd Year</asp:ListItem>
                <asp:ListItem>3rd Year</asp:ListItem>
                <asp:ListItem>4th Year</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="10th Percentage"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txttenth" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ControlToValidate="txttenth" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter 10th %</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="12th Percentage"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txttwelth" runat="server"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="CGPA"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcgpa" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="*" ControlToValidate="txtcgpa" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter CGPA %</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Standing Arrear count"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtarrear" runat="server"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Arrear History"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="yes" Checked="True" 
                GroupName="arr" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="no" GroupName="arr" />
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Salary Package"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
            per annum<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="*" ControlToValidate="txtsalary" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter salary</asp:RequiredFieldValidator>
         </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label20" runat="server" Text="Company URL"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcompurl" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="*" ControlToValidate="txtcompurl" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter comp URL</asp:RequiredFieldValidator>
            </td>
    </tr>
    <%-- <tr>
        <td>
            <asp:Label ID="Label10" runat="server" Text="Question Paper"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" 
                Font-Names="Cambria" />
        </td>
    </tr>--%>
    
</table>
  </td>
        <td valign="top">
            <fieldset style="height: 447px; width: 406px">
                <legend>
                Selection Process
                </legend>
                <table style="height: 197px; width: 358px">
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Round1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtround1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txttime1" runat="server" Width="63px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropt1" runat="server" Font-Bold="True" 
                                Font-Names="Cambria">
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Round2"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtround2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txttime2" runat="server" Width="63px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropt2" runat="server" Font-Bold="True" 
                                Font-Names="Cambria">
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Round3"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtround3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txttime3" runat="server" Width="63px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropt3" runat="server" Font-Bold="True" 
                                Font-Names="Cambria">
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Round4"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtround4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txttime4" runat="server" Width="63px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropt4" runat="server" Font-Bold="True" 
                                Font-Names="Cambria">
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Round5"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtround5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txttime5" runat="server" Width="63px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropt5" runat="server" Font-Bold="True" 
                                Font-Names="Cambria">
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    </table>
                    <table style="height: 195px; width: 389px">
                    <tr>
                        <td>
                            <asp:Label ID="Date" runat="server" Text="Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdate" runat="server" ></asp:TextBox>
                        </td>
                       <td>
                           <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                               BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" 
                               Font-Names="Cambria" Font-Size="6pt" ForeColor="#003399" Height="130px" Width="144px" 
                               onselectionchanged="Calendar1_SelectionChanged" CellPadding="1">
                               <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                               <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                               <OtherMonthDayStyle ForeColor="#999999" />
                               <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                               <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                               <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" 
                                   ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                               <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                               <WeekendDayStyle BackColor="#CCCCFF" />
                           </asp:Calendar>
                       </td>
                    </tr>
                     <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Create" Font-Bold="True" 
                Font-Names="Cambria" onclick="Button1_Click" style="width: 57px" ValidationGroup="college" />
        </td>
        <td>
         <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                Font-Names="Cambria" />
      </td>
      <td></td>
      <td>
            &nbsp;</td>
    </tr>
                </table>
                <br />
            <asp:Label ID="lblack" runat="server" ForeColor="#CC0000" 
                Text="Company Created Successfully!!!" Visible="False"></asp:Label>
            </fieldset>
        </td>
      
    </tr>
</table>
                </table>
</asp:Content>

