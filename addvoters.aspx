<%@ Page Title="" Language="C#" MasterPageFile="~/Election.master" AutoEventWireup="true" CodeFile="addvoters.aspx.cs" Inherits="addvoters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 355px; width: 857px">
        <tr>
            <td>
                <table style="height: 364px; width: 478px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Reg No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtregno" runat="server" AutoPostBack="True" OnTextChanged="txtregno_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="regno must" ControlToValidate="txtregno" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="name must" ControlToValidate="txtname" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="dept must" ControlToValidate="txtdept" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcourse" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="course must" ControlToValidate="txtcourse" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Attendance %"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtattendence" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="atten% must" ControlToValidate="txtattendence" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Year"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropyear" runat="server" Font-Bold="True" Font-Names="Cambria">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="No of Arrears"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnoarrears" runat="server" Width="64px">0</asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                           
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" Text="Generate Username & Password" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server" BorderStyle="None" Enabled="False" Font-Bold="True"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server" BorderStyle="None" Enabled="False" Font-Bold="True"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Add Voters" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="vote" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="319px" ImageUrl="~/Projimg/voters.png" Width="288px" />
            </td>
        </tr>
    </table>
</asp:Content>

