<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DatabaseSQL.aspx.vb" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Repeater ID="sqlRepeater" runat="server">
    <HeaderTemplate>
        <table border="1" width="100%">
            <tr>
            <th>ID</th>
            <th>Student Name</th>
            <th>Email </th>
            <th>Score</th>
            <th>Division</th>
            </tr>
       </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Container.DataItem("ID")%></td>
                <td><%# Container.DataItem("stdName")%></td>
                <td><%# Container.DataItem("stdEmail")%></td>
                <td><%# Container.DataItem("score")%></td>
                <td><%# Container.DataItem("division")%></td>
            </tr>   
        </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
    </asp:Repeater>
    </form>
</body>
</html>
