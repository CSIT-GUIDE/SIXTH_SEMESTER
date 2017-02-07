<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DataListControl.aspx.vb"
    Inherits="WebApplication2.DataListControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    <asp:DataList ID="myDataList" runat="server" cellpadding="2" cellspacing="2" 
        borderstyle="Groove" backcolor="#e8e8e8" width="100%" headerstyle-font-name="Verdana"
headerstyle-font-size="12pt" headerstyle-horizontalalign="center" headerstyle-font-bold="true"
itemstyle-backcolor="#778899" itemstyle-forecolor="#ffffff" footerstyle-font-size="9pt"
footerstyle-font-italic="true">
        <HeaderTemplate>
            My CD Catalog
        </HeaderTemplate>
        <ItemTemplate>
            "<%#Container.DataItem("title")%>" of
            <%#Container.DataItem("artist")%>
            - $<%#Container.DataItem("price")%>
        </ItemTemplate>
        <FooterTemplate>
            Copyright Sagar Giri
        </FooterTemplate>
    </asp:DataList>
    </form>
</body>
</html>
