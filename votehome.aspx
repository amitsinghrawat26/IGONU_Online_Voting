<%@ Page Title="" Language="C#" MasterPageFile="~/voting.master" AutoEventWireup="true" CodeFile="votehome.aspx.cs" Inherits="votehome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 636px">
        <tr>
            <td>
                <table style="height: 115px; width: 247px">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Welcome Voter &gt;&gt;&gt; "></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                        </td>
                     <td>
                            <asp:Label ID="lbldept" runat="server" Text="Department"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Reg No"></asp:Label>
                        </td>
                     <td>
                            <asp:Label ID="lblregno" runat="server" Text="Department"></asp:Label>
                        </td>
                    </tr>
    </table>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="262px" ImageUrl="~/Projimg/voting1.jpg" Width="271px" />
            </td>
        </tr>
    </table>
    
</asp:Content>

