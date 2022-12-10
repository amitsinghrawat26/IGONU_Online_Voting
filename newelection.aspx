<%@ Page Title="" Language="C#" MasterPageFile="~/Election.master" AutoEventWireup="true" CodeFile="newelection.aspx.cs" Inherits="newelection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script src="JavaScript.js" type="text/javascript"></script>
    <link href="cal.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 461px; height: 179px;">
        <tr>
            <td>
                 <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
            </td>
            <td>
                 <asp:DropDownList ID="txtposition" runat="server" Font-Bold="True" Font-Names="Cambria">
                                        <asp:ListItem>Secretary</asp:ListItem>
                                        <asp:ListItem>Chairperson</asp:ListItem>
                                        <asp:ListItem>Join Secretary</asp:ListItem>
                                    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Election Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtelectiontiontitle" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter title" ControlToValidate="txtelectiontiontitle" Font-Size="X-Small" ForeColor="Red" ValidationGroup="vote"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Select Date"></asp:Label>
                </td>
                <td>
                    D:
                    <asp:DropDownList ID="dropday" runat="server" Font-Bold="True" 
                        Font-Names="Cambria">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                        <asp:ListItem Value="13"></asp:ListItem>
                        <asp:ListItem Value="14"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="16"></asp:ListItem>
                        <asp:ListItem Value="17"></asp:ListItem>
                        <asp:ListItem Value="18"></asp:ListItem>
                        <asp:ListItem Value="19"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                        <asp:ListItem Value="21"></asp:ListItem>
                        <asp:ListItem Value="22"></asp:ListItem>
                        <asp:ListItem Value="23"></asp:ListItem>
                        <asp:ListItem Value="24"></asp:ListItem>
                        <asp:ListItem Value="25"></asp:ListItem>
                        <asp:ListItem Value="26"></asp:ListItem>
                        <asp:ListItem Value="27"></asp:ListItem>
                        <asp:ListItem Value="28"></asp:ListItem>
                        <asp:ListItem Value="29"></asp:ListItem>
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="31"></asp:ListItem>
                    </asp:DropDownList>
                     M:
                    <asp:DropDownList ID="dropmonth" runat="server" Font-Bold="True" 
                        Font-Names="Cambria">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                     Y:
                    <asp:DropDownList ID="dropyear" runat="server" Font-Bold="True" 
                        Font-Names="Cambria">
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                         <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
           

      <%--   <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Election Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" onfocus="showCalendarControl(this);"></asp:TextBox>
            </td>
        </tr>--%>
         <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Create Election" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="vote" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
</asp:Content>

