<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staffsignup.aspx.cs" Inherits="staffsignup" %>

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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Back to home</asp:HyperLink>
        <br />
        <center>
            <br />
            <br />
            <table style="height: 336px; width: 788px">
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="331px" ImageUrl="~/Projimg/staff.png" Width="340px"></asp:Image>
                    </td>
                    <td>
                        <table style="height: 304px; width: 387px">
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label1" runat="server" Text="Staff Id"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtstaffid" runat="server" AutoPostBack="True" OnTextChanged="txtstaffid_TextChanged"></asp:TextBox>
                                    <asp:Label ID="lblstaffid" runat="server" ForeColor="Red" Text="Staff id exists" Visible="False"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter staff id" ControlToValidate="txtstaffid" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter staff name" ControlToValidate="txtname" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter department" ControlToValidate="txtdept" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter email" ControlToValidate="txtemail" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="invalid mail format" Font-Size="X-Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vote"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtphone" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter phone" ControlToValidate="txtphone" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">

                                </td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" Text="Generate Username & Password" Font-Bold="True" Font-Names="Cambria" Font-Size="Small" OnClick="Button3_Click" Width="215px"></asp:Button>
                                </td>
                            </tr>

                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Signup" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="vote"></asp:Button>
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria"></asp:Button>
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
