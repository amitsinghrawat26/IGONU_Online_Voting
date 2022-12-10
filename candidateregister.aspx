<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidateregister.aspx.cs" Inherits="candidateregister" %>

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
      <table style="width:1340px;height:113px; background-image: url('Projimg/header.jpg');">
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
        <marquee>
            <div style="color:red;">
            Welcome to candidate Registeration!!!
                </div></marquee>
        <br />
        <center>
            <table style="height: 293px; width: 368px">
                <tr>
                    <td>
                        <table style="height: 370px; width: 396px">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name must" ControlToValidate="txtname" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Roll No"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtrollno" runat="server" AutoPostBack="True" OnTextChanged="txtrollno_TextChanged"></asp:TextBox>
                                    <asp:Label ID="lblrollno" runat="server" ForeColor="Red" Text="Roll no exists" Visible="False"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="regno must" ControlToValidate="txtrollno" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="dropdept" runat="server" Font-Bold="True" Font-Names="Cambria">
                                        <asp:ListItem>Computer Science</asp:ListItem>
                                        <asp:ListItem>Information Technology</asp:ListItem>
                                         <asp:ListItem>Electronics</asp:ListItem>
                                         <asp:ListItem>English</asp:ListItem>
                                         <asp:ListItem>Tamil</asp:ListItem>
                                        <asp:ListItem>Mathematics</asp:ListItem>
                                        <asp:ListItem>Physics</asp:ListItem>
                                        <asp:ListItem>Chemistry</asp:ListItem>
                                        <asp:ListItem>Commerce</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="dropfaculty" runat="server" Font-Bold="True" Font-Names="Cambria" Height="35px" Width="189px">
                                        <asp:ListItem>Bsc</asp:ListItem>
                                        <asp:ListItem>BA</asp:ListItem>
                                        <asp:ListItem>Bcom</asp:ListItem>
                                        <asp:ListItem>Bcom CA</asp:ListItem>
                                        <asp:ListItem>MA</asp:ListItem>
                                        <asp:ListItem>Msc</asp:ListItem>
                                        <asp:ListItem>MCA</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="txtposition" runat="server" Font-Bold="True" Font-Names="Cambria">
                                        <asp:ListItem>Secretary</asp:ListItem>
                                        <asp:ListItem>Chairperson</asp:ListItem>
                                        <asp:ListItem>Join Secretary</asp:ListItem>
                                    </asp:DropDownList>
                                    <%--<asp:TextBox ID="txtposition" runat="server"></asp:TextBox>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtusername" runat="server" AutoPostBack="True" OnTextChanged="txtusername_TextChanged"></asp:TextBox>
                                    <asp:Label ID="lbluname" runat="server" ForeColor="Red" Text="Username exists" Visible="False"></asp:Label>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="username must" ControlToValidate="txtusername" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="password must" ControlToValidate="txtpassword" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="vote"></asp:Button>
                                </td>
                                <td style="text-align: left">
                                   <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria"></asp:Button>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>

                        <asp:Image ID="Image2" runat="server" Height="310px" ImageUrl="~/Projimg/candidates.png" Width="427px" />

                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
