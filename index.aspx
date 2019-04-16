<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body >
    <form id="form1" runat="server">
     <div>
       <table style="width: 1340px; height: 176px;">
            <tr>
                <td style="font-size: x-large" valign="top">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/psg logo.jpg" Height="159px" 
                        Width="139px" />
                    <br />
                </td>
                <td valign="top" style="border-color: blue">
                    <asp:Image ID="Image2" runat="server" Height="172px" 
                        ImageUrl="~/img/header.jpg" Width="710px" />
                </td>
            </tr>
        </table>
        <table style="width: 1340px; height: 16px; border-color: #02283B;">
            <tr>
                <td>
                
                </td>
            </tr>
        </table>
        <br />
        <center style="width: 1320px; height: 356px;">
            <br />
        <table style="border-color: blue;">
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" 
                        ImageUrl="~/img/login.png" Height="187px" Width="216px" />
                </td>
                <td>
              
            <fieldset style="height: 188px; width: 431px">
                <legend>
                Menus
                </legend>
                <table style="height: 160px; width: 363px">
                  <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Select User"></asp:Label>
                        </td>
                        <td align="justify">
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                                Font-Names="Cambria" Width="128px">
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Co-ordinator</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td align="justify">
                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ControlToValidate="txtusername" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter username</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td align="justify">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="*" ControlToValidate="txtpassword" Font-Size="X-Small" ForeColor="Red" ValidationGroup="college">enter password</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                                Font-Names="Cambria" Width="58px" onclick="Button1_Click" ValidationGroup="college" />
                        </td>
                        <td align="left">
                            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                                Font-Names="Cambria" />
                        &nbsp;<asp:Label ID="lblerr" runat="server" ForeColor="Maroon" Text="Invalid User" 
                                Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </fieldset>
              
                </td>
            </tr>
        </table>
        </center>
    </div>
    </form>
</body>
</html>
