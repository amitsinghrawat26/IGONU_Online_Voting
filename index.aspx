<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:1340px;height:138px; background-image: url('Projimg/header.jpg');">
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
        <marquee>
        <table style="height: 11px; width: 1060px; background-color: #CCFFFF;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Election Date"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblelecdate" runat="server" Text="Not Fixed" ForeColor="Red"></asp:Label>
                    !!!</td>
                <td></td>
                <td class="auto-style4">
                    Winner
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblwinner" runat="server" Text="Not announced" ForeColor="Red"></asp:Label>
                    !!!</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/winnerprofile.aspx">View Winner Profile!!!</asp:HyperLink>
                </td>
            </tr>
        </table></marquee>
        <br />
        <center>
            <table style="height: 249px; width: 1160px">
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="199px" ImageUrl="~/Projimg/elect.png" Width="247px"></asp:Image>
                    </td>
                    <td>
                        <table style="height: 179px; width: 320px">
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Select User"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="dropuser" runat="server" Font-Bold="True" Font-Names="Cambria">
                                        <asp:ListItem>Staff</asp:ListItem>
                                        <asp:ListItem>Candidate</asp:ListItem>
                                        <asp:ListItem>Voting</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" Font-Names="Cambria" Width="55px" OnClick="Button1_Click"></asp:Button>
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria"></asp:Button>
                                </td>
                            </tr>
                           <%-- <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/staffsignup.aspx">Staff Signup</asp:HyperLink>
                                </td>
                            </tr>--%>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    Nominee can Registration Here for Election
                                                  <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" ImageUrl="~/Projimg/REGISTER.gif" Width="151px" OnClick="ImageButton1_Click"></asp:ImageButton>
                                    
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
