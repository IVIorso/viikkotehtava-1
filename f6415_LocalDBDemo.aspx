<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f6415_LocalDBDemo.aspx.cs" Inherits="f6415_LocalDBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paikalliset videot</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Tässä videoita</h1>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae Elokuvat" OnClick="btnGetMovies_Click1" />
        <asp:DataList ID ="myDataList" runat="server">
            <ItemTemplate><%#Eval("Title") %> ohjannut <%#Eval("Director") %></ItemTemplate>

        </asp:DataList>
    </div>
    </form>
</body>
</html>
