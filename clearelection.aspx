<%@ Page Title="" Language="C#" MasterPageFile="~/Election.master" AutoEventWireup="true" CodeFile="clearelection.aspx.cs" Inherits="clearelection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 106px; width: 339px">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Clear Election &amp; Result &amp; Candidates..." BackColor="#232B41" Font-Bold="True" Font-Names="Cambria" ForeColor="White" Height="49px" OnClick="Button1_Click" Width="278px" />
            </td>
        </tr>
    </table>
</asp:Content>

