<%@ Page Title="" Language="C#" MasterPageFile="~/voting.master" AutoEventWireup="true" CodeFile="Viewreultvoters.aspx.cs" Inherits="Viewreultvoters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: center; width: 294px;">
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="36px" ImageUrl="~/Projimg/winner-stars.png" Width="74px" />
            </td>
            <td>
                ELECTION RESULT:
            </td>
        </tr>
    </table>
    <table style="width: 617px">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Projimg/secreatary.jpg" Height="224px" Width="224px" />
            </td>
            <td>
               <table>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Secretary Election Result:" Font-Size="Medium" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                   </table>
                   <table style="height: 230px; width: 333px">  
                    <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblname" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            &nbsp;<asp:Image ID="Image4" runat="server" Height="22px" ImageUrl="~/Projimg/winnersIcon.png" Width="21px" />
            </td>
        </tr>
          <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Regno"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblregno" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
          <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Total Votes"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltotvote" runat="server" Text="...................." ForeColor="Red"></asp:Label>
            </td>
        </tr>
          <tr>
            <td class="auto-style4" >
                <asp:Label ID="Label6" runat="server" Text="Position"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblposition" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
                </table>
            </td>
        </tr>
    </table>
    <table style="width: 617px">
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Projimg/chairperson.png" Height="224px" Width="224px" />
            </td>
            <td>
               <table style="width: 356px">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Chairperson Election Result:" Font-Size="Medium" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                   </table>
                 <table style="height: 230px; width: 329px">
                    <tr>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblname1" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            &nbsp;<asp:Image ID="Image5" runat="server" Height="22px" ImageUrl="~/Projimg/winnersIcon.png" Width="21px" />
            </td>
        </tr>
          <tr>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Text="Regno"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblregno1" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
          <tr>
            <td class="auto-style4">
                <asp:Label ID="Label11" runat="server" Text="Total Votes"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltotvote1" runat="server" Text="...................." ForeColor="Red"></asp:Label>
            </td>
        </tr>
          <tr>
            <td class="auto-style4" >
                <asp:Label ID="Label13" runat="server" Text="Position"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblposition1" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

