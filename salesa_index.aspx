<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salesa_index.aspx.cs" Inherits="salesa_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Esan viikkotehtävät</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <h1>Viikkotehtävä 1</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Viikkotehtävän 0 ratkaisus</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/salesa_DBDemo.aspx">Viinit </asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/salesa_LocalDBDemo.aspx">Paikalliset elokuvat</asp:HyperLink>
        <br />
        <h2>Viikon 38 tuntiharkat</h2>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/salesa_age.aspx">Iän laskenta Kalenter-komponentilla</asp:HyperLink>
        <h2>Viikon 39 tuntiharkat</h2>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/salesa_dbcontrols.aspx">Demo of Databound Controls</asp:HyperLink>
    </div>
    </form>
</body>
</html>
