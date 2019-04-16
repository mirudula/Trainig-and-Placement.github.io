<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="downloadresumeformat.aspx.cs" Inherits="downloadresumeformat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><center>Resume</center></h1>
    <table>
        <tr>
            <td bgcolor="#CCCCCC">

           
    <table style="height: 44px; width: 360px">
        <tr>
            <td style="color: #FF0066">
                <asp:Label ID="Label1" runat="server" Text="Right Click and Download Resume Format"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>

          
    <table style="height: 180px; width: 199px">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server">Format 1</asp:HyperLink>
            </td>
        </tr>
          <tr>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server">Format 2</asp:HyperLink>
            </td>
        </tr>
          <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server">Format 3</asp:HyperLink>
            </td>
        </tr>
    </table>
                  </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl="~/img/resume.png" Width="112px" />
            </td>
        </tr>
    </table>
                 </td>
            <td bgcolor="#33CCCC">
                <table style="width: 334px; height: 58px">
                    <tr>
                        <td class="auto-style1" style="color: #FF0066">
                            Upload Your Resume
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="47px" ImageUrl="~/img/upload.png" Width="51px" />
                        </td>
                    </tr>
                </table>
                <br />
                <table style="height: 105px; width: 462px">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Upload Resume"></asp:Label>
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
                        &nbsp;<asp:Label ID="lblack" runat="server" ForeColor="Red" Text="Resume Uploaded Successfully!!!" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

