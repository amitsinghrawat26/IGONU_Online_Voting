<%@ Page Title="" Language="C#" MasterPageFile="~/Election.master" AutoEventWireup="true" CodeFile="staffhome.aspx.cs" Inherits="staffhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 242px; width: 554px">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/Projimg/staffhome.png" Width="185px" />
            </td>
            <td>
                  <table style="height: 166px; width: 269px">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Welcome Staff"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblstaffname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Staff Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblstaffid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
          <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Current Date"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Current Time"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
                  </td>
        </tr>
    </table>
</asp:Content>

