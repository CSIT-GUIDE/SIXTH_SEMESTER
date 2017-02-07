<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HashMap.aspx.vb" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:RadioButtonList ID="RadioHash" runat="server" AutoPostBack="True" OnSelectedIndexChanged="displayMessage">
    </asp:RadioButtonList>
    <asp:Label ID="MyLabel" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
