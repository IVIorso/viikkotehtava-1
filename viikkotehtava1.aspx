<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viikkotehtava1.aspx.cs" Inherits="viikkotehtava1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    Tervetuloa, annatko nimesi jotta pääset valuuttamuuntimeen:<br />
        <asp:TextBox ID="kayttajaTextBox" runat="server"></asp:TextBox><br />
        <asp:Button ID="muunninButton" runat="server" Text="Valuuttamuuntimeen" />
        <asp:Button ID="sessionButton" runat="server" Text="Tallenna Session" />
        <asp:Button ID="cookieButton" runat="server" Text="Tallenna Cookie" />
    </div>
    </form>
</body>
</html>
