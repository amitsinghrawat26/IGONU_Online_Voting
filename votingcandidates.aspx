<%@ Page Title="" Language="C#" MasterPageFile="~/voting.master" AutoEventWireup="true" CodeFile="votingcandidates.aspx.cs" Inherits="votingcandidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Width="647px">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Candidate Name" SortExpression="name" />
                        <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                        <asp:BoundField DataField="faculty" HeaderText="Faculty" SortExpression="faculty" />
                        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position">
                        <ItemStyle ForeColor="Red" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>    
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [name], [dept], [faculty], [position] FROM [candidatedet] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Selected" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

