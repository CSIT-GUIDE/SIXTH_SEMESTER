<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AlternatigTemplateDemo.aspx.vb" Inherits="WebApplication2.AlternatigTemplateDemo" %>

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
    <table border="0" width="100%">
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
            <td><%#Container.DataItem("price")%></td>
            <td><%#Container.DataItem("year")%></td>
        </tr>
    </ItemTemplate>
    <SeparatorTemplate>
        <tr>
            <td colspan="6"><hr /></td>
        </tr>
    </SeparatorTemplate>
    <%--
    <AlternatingItemTemplate>
        <tr bgcolor="#e8e8e8">
            <td><%#Container.DataItem("title")%></td>
            <td><%#Container.DataItem("artist")%></td>
            <td><%#Container.DataItem("country")%></td>
            <td><%#Container.DataItem("company")%></td>
            <td><%#Container.DataItem("price")%></td>
            <td><%#Container.DataItem("year")%></td>
        </tr>
    </AlternatingItemTemplate>
    --%>

    <FooterTemplate>
    </table>
    </FooterTemplate>


    </asp:Repeater>
    </form>
</body>
</html>
