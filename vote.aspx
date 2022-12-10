<%@ Page Title="" Language="C#" MasterPageFile="~/voting.master" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="vote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 115px; width: 247px">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                !!!</td>
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
         <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Year"></asp:Label>
                        </td>
                     <td>
                            <asp:Label ID="lblyear" runat="server" Text="Department"></asp:Label>
                        </td>
                    </tr>
    </table>
    <br />
    <asp:Label ID="lblack" runat="server" Font-Size="Medium" ForeColor="Red" Text="Voters Kindly Wait for the Election !!!" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblalready" runat="server" Font-Size="Medium" ForeColor="Red" Text="User Already Voted!!!" Visible="False"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Visible="false">
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="843px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                        <ItemStyle ForeColor="#3333FF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rollno" HeaderText="Regno" SortExpression="rollno" />
                        <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                        <asp:BoundField DataField="faculty" HeaderText="Faculty" SortExpression="faculty" />
                        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" >
                        <ItemStyle ForeColor="Red" />
                        </asp:BoundField>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Projimg/votegrid.png" ControlStyle-Width="50px" ControlStyle-Height="50px" ShowSelectButton="True">
<ControlStyle Height="50px" Width="50px"></ControlStyle>

                        <ItemStyle Height="50px" Width="50px" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [name], [rollno], [dept], [faculty], [position] FROM [candidatedet] WHERE (([status] = @status) AND ([position] = @position))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Selected" Name="status" Type="String" />
                        <asp:ControlParameter ControlID="lbl" Name="position" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </asp:Panel>
    <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
</asp:Content>

