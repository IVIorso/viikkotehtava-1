<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f6415_index.aspx.cs" Inherits="f6415_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>F6415 Viikkotehtävät</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/viikkotehtava1.aspx">Viikkotehtävä 1</asp:HyperLink>
    <h1>F6415 Testit</h1>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/f6415_DBDemo.aspx">DBDemo</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/f6415_LocalDBDemo.aspx">Local DBDemo</asp:HyperLink>
    </div>
    </form>
</body>
</html>
