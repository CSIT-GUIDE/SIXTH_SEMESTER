<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RepeaterControlDemo.aspx.vb" Inherits="WebApplication2.RepeaterControlDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Repeater ID="catalogCD" runat="server">
        <HeaderTemplate>
        <table border="1" width="100%">
            <tr>
            <th>Title</th>
            <th>Artist</th>
            <th>Country</th>
            <th>Company</th>
            <th>Price</th>
            <th>Year</th>
            </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Container.DataItem("title")%></td>
                <td><%#Container.DataItem("artist")%></td>
                <td><%#Container.DataItem("country")%></td>
                <td><%#Container.DataItem("company")%></td>
                <td>$<%#Container.DataItem("price")%></td>
                <td><%#Container.DataItem("year")%></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

     </asp:Repeater>
    </form>
</body>
</html>
