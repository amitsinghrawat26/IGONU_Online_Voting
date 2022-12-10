<%@ Page Title="" Language="C#" MasterPageFile="~/Election.master" AutoEventWireup="true" CodeFile="Viewcandidates.aspx.cs" Inherits="Viewcandidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 55px;
        }
        .auto-style4 {
            height: 55px;
            width: 99px;
        }
        .auto-style5 {
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                Candidate Applied List
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="983px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="rollno" HeaderText="Reg No" SortExpression="rollno" />
                        <asp:BoundField DataField="dept" HeaderText="Dept" SortExpression="dept" />
                        <asp:BoundField DataField="faculty" HeaderText="Faculty" SortExpression="faculty" />
                        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position">
                        <ItemStyle ForeColor="Red" />
                        </asp:BoundField>
                        <asp:BoundField DataField="cdate" HeaderText="Applied Date" SortExpression="cdate" />
                        <asp:BoundField DataField="status" HeaderText="Eligibility" SortExpression="status" />
                        <asp:CommandField ShowSelectButton="True" SelectText="Eligible" >
                        <ItemStyle ForeColor="#FF0066" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [name], [rollno], [dept], [faculty], [position], [cdate], [status] FROM [candidatedet]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="background-color: #CCCCCC">

            </td>
        </tr>
        <tr>
            <td>
                Candidate Selected List
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" Width="936px">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="rollno" HeaderText="Reg No" SortExpression="rollno" />
                        <asp:BoundField DataField="dept" HeaderText="Dept" SortExpression="dept" />
                        <asp:BoundField DataField="faculty" HeaderText="Faculty" SortExpression="faculty" />
                        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position">
                        <ItemStyle ForeColor="Red" />
                        </asp:BoundField>
                        <asp:BoundField DataField="cdate" HeaderText="Applied Date" SortExpression="cdate" />
                        <asp:BoundField DataField="status" HeaderText="Eligibility" SortExpression="status">
                        <ItemStyle ForeColor="Red" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [name], [rollno], [dept], [faculty], [position], [cdate], [status] FROM [candidatedet] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Selected" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <fieldset style="height: 176px; width: 417px">
        <legend>
            Verification Process
        </legend>
        <table style="width: 408px; height: 147px;">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Enter Roll No"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtrollno" runat="server" Width="167px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter rollno" ControlToValidate="txtrollno" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#CCCCCC" BorderStyle="Outset" Height="43px" ImageUrl="~/Projimg/verify.png" Width="44px" OnClick="ImageButton1_Click" ValidationGroup="vote" />
                </td>
            </tr>
             <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblname" runat="server" Text="..................."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Attendance %"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblattendance" runat="server" Text="..................."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Arrears"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblarrears" runat="server" Text="..................."></asp:Label>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>

