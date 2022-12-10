<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkeligibility.aspx.cs" Inherits="checkeligibility" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
        .auto-style2 {
            width: 182px;
        }
        .auto-style3 {
            width: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:1340px;height:100px; background-image: url('Projimg/header.jpg');">
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td style="text-align: center; font-size: x-large; color: #FFFFFF;">
                COLLEGE ONLINE ELECTION SYSTEM
            </td>
        </tr>
    </table>
         <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Logout</asp:HyperLink>
        <br />
        <br />
        <table style="width: 1271px">
            <tr>
                <td style="color: #3333FF; font-size: medium; font-weight: bold">
                       <marquee>
            Welcome Cadidate!!!
        </marquee>
                </td>
            </tr>
        </table>
     
        <br />
        <center>
          <table style="height: 112px; width: 393px">
              <tr>
                  <td class="auto-style3">
                      <asp:Label ID="Label1" runat="server" Text="Candidate Name"></asp:Label>
                  </td>
                  <td>
                      <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                  </td>
              </tr>
               <tr>
                  <td class="auto-style3">
                      <asp:Label ID="Label2" runat="server" Text="Candidate Regno"></asp:Label>
                  </td>
                  <td>
                      <asp:Label ID="lblregno" runat="server" Text="Label"></asp:Label>
                  </td>
              </tr>
               <tr>
                  <td class="auto-style3">
                      <asp:Label ID="Label3" runat="server" Text="Applied for"></asp:Label>
                  </td>
                  <td>
                      <asp:Label ID="lblapplied" runat="server" Text="Label"></asp:Label>
                  </td>
              </tr>
          </table>
            
            <br />
            
            <table style="width: 863px">
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Projimg/eligible 2.jpg"></asp:Image>
                    </td>
                    <td>
                        <asp:Label ID="lbleligible" runat="server" Text="Label" Font-Size="Large" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
