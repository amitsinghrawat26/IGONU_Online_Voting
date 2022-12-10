<%@ Page Language="C#" AutoEventWireup="true" CodeFile="winnerprofile.aspx.cs" Inherits="winnerprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
       
        .auto-style2 {
            width: 63px;
        }
        .auto-style4 {
            width: 80px;
        }
        .auto-style6 {
            width: 97px;
        }
        .auto-style7 {
            width: 118px;
        }
        .auto-style8 {
            width: 139px;
        }
       
        .auto-style9 {
            width: 122px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:1340px;height:100px; background-image: url('Projimg/header.jpg');">
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td style="text-align: center; font-size: x-large; color: #FFFFFF;">
                COLLEGE ONLINE ELECTION SYSTEM
            </td>
        </tr>
    </table>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Back to home</asp:HyperLink>
        <br />
        <center>
            <table style="width: 628px; background-color: #CCCCFF;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                     </td>
                    <td class="auto-style7">
                        <asp:Label ID="lblwinname" runat="server" Text="--------------------"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Position"></asp:Label>
                     </td>
                    <td class="auto-style8">
                        <asp:Label ID="lblposition" runat="server" Text="--------------------"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="No of Votes"></asp:Label>
                     </td>
                    <td>
                        <asp:Label ID="lblnovotes" runat="server" Text="--------------------"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            Profile of Winner<br />
            <table style="border: medium groove #CC6699; height: 248px; width: 327px; background-color: #FFCCFF;">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblname" runat="server" Text="--------------------"></asp:Label>
                    </td>

                </tr>
                 <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label5" runat="server" Text="Roll No"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblrollno" runat="server" Text="--------------------"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label6" runat="server" Text="Department"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbldepartment" runat="server" Text="--------------------"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label7" runat="server" Text="Faculty"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblfaculty" runat="server" Text="--------------------"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label8" runat="server" Text="Position"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblsposition" runat="server" Text="--------------------"></asp:Label>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
