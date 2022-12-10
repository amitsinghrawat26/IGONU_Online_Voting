<%@ Page Title="" Language="C#" MasterPageFile="~/Election.master" AutoEventWireup="true" CodeFile="Staffviewresult.aspx.cs" Inherits="Staffviewresult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 20px;
        }
    .auto-style4 {
        height: 156px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 286px; height: 38px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Position"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropposition" runat="server" Font-Bold="True" Font-Names="Cambria">
                    <asp:ListItem>Secretary</asp:ListItem>
                    <asp:ListItem>Chairperson</asp:ListItem>
                    <asp:ListItem>Join Secretary</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="View Result" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="684px">
                    <Columns>
                        <asp:BoundField DataField="regno" HeaderText="Candidate Regno" SortExpression="regno">
                        <ItemStyle ForeColor="Red" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Candidate Name" SortExpression="name" />
                        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                        <asp:BoundField DataField="novote" HeaderText="No of Votes" SortExpression="novote">
                        <ItemStyle ForeColor="Red" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [finalresult]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <table style="width: 678px; height: 178px">
        <tr>
            <td class="auto-style4">

          
    <table style="height: 152px; width: 244px">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Current Winner" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblname" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Regno"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblregno" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Total Votes"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltotvote" runat="server" Text="...................." ForeColor="Red"></asp:Label>
            </td>
        </tr>
          <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Position"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="lblposition" runat="server" Text="...................." ForeColor="#3333FF"></asp:Label>
            </td>
        </tr>
    </table>
                  </td>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" Text="PUBLISH ELECTION RESULT!!!" BackColor="#FF9966" BorderColor="#FF6600" Font-Bold="True" Font-Names="Cambria" Height="51px" OnClick="Button2_Click" Width="284px" />
            </td>
        </tr>
    </table>
</asp:Content>

