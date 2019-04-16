<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="uploadstudb.aspx.cs" Inherits="uploadstudb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Generate Student</center></h1>
    <table style="height: 595px; width: 526px">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Roll No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtregno" runat="server" AutoPostBack="True" OnTextChanged="txtregno_TextChanged"></asp:TextBox>
                <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="Rollno Exists" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ControlToValidate="txtregno" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter rollno</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="*" ControlToValidate="txtname" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter name</asp:RequiredFieldValidator>
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
                <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
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
                <asp:Label ID="Label6" runat="server" Text="10th %"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttenth" runat="server" Width="70px"></asp:TextBox>
                %<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="*" ControlToValidate="txttenth" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter 10th %</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="12th %"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttwelth" runat="server" Width="70px"></asp:TextBox>
                %<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="*" ControlToValidate="txttwelth" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter 12th %</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Current CGPA(%)"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcgpa" runat="server" Width="70px"></asp:TextBox>
                %<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="*" ControlToValidate="txtcgpa" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter mark %</asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Standing Arrear"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstandingarrear" runat="server" Width="90px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Arrear History"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtarrhis" runat="server" Width="90px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Arrear Count"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtarrearcount" runat="server" Width="90px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="*" ControlToValidate="txtemail" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter email</asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid email format" Font-Size="X-Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="college"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ErrorMessage="*" ControlToValidate="txtphone" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter phone</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Create" Font-Bold="True" Font-Names="Cambria" OnClick="Button2_Click" ValidationGroup="college" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            &nbsp;
                <asp:Label ID="lblac" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>

