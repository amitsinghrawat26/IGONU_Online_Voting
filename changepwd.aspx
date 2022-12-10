<%@ Page Title="" Language="C#" MasterPageFile="~/voting.master" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="changepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 245px; width: 649px">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="164px" ImageUrl="~/Projimg/changepwd.jpg" Width="164px" />
            </td>
            <td>
                <table style="height: 161px; width: 451px">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter old password" ControlToValidate="txtold" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter new password" ControlToValidate="txtnew" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtretype" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter retype password" ControlToValidate="txtretype" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnew" ControlToValidate="txtretype" ErrorMessage="password mismatch" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:CompareValidator>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="vote" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

