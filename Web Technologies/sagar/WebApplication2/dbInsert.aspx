<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dbInsert.aspx.vb" Inherits="WebApplication2.dbInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
    </script>
</head>
<body onunload="return window_onunload()">
    <form id="form1" runat="server">
    <div>
        <h3>
            <font face="Verdana">Enter Student Details</font></h3>
        <table>
            <tr>
                <td>
                    ID:
                </td>
                <td>
                    <asp:TextBox ID="ssid" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="name" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Email: 
                </td>
                <td>
                    <asp:TextBox ID="email" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Score:
                </td>
                <td>
                    <asp:TextBox ID="score" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Division:
                </td>
                <td>
                    <asp:TextBox ID="division" runat="server" />
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" Text="Insert" OnClick="Insert_Click" runat="server" />
        <p>
            <asp:Label ID="Msg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
    </div>
    </form>
</body>
</html>
