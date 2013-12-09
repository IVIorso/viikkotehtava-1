<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesa_HaeIlmot3.aspx.cs" Inherits="salesa_HaeIlmot2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Syksyn 2013 ilmoittautumiset</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="srcIlmot" 
        ConnectionString=  "<%$ ConnectionStrings:Ilmot%>"
        SelectCommand="SELECT asioid, lastname, firstname, date FROM lasnaolot WHERE course like 'IIO13200%' ORDER BY asioid" runat="server">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="srcCourses" 
        ConnectionString=  "<%$ ConnectionStrings:Ilmot%>"
        SelectCommand="SELECT DISTINCT course FROM lasnaolot ORDER BY course" runat="server">
    </asp:SqlDataSource>
    <asp:TextBox ID="txtName" runat="server" />
    <!-- esimerkki staattisesta DropDownList:sta
    <asp:DropDownList ID="ddlCoursesStatic" runat="server">
        <asp:ListItem Text="" />
        <asp:ListItem Text="IIO13200" />
        <asp:ListItem Text="IIO12100" />
        <asp:ListItem Text="IIO11300" /> 
    </asp:DropDownList> -->
    <asp:DropDownList ID="ddlCourses" DataSourceID="srcCourses" DataTextField="course" runat="server">
    </asp:DropDownList>
    <asp:Button ID="btnGet" Text="Hae" runat="server" OnClick="btnGet_Click"/>
    <!--tarkistetaan käyttäjän syöte SqlInjection varalta -->
    <asp:RegularExpressionValidator 
        ID="RegularExpressionValidator1" 
        runat="server" 
        ErrorMessage="Sukunimi voi sisältää vain kirjaimia" 
        ControlToValidate="txtName" 
        ValidationExpression="^[a-öA-Ö]*$">
    </asp:RegularExpressionValidator>
    <h2>Syksyn läsnäolot</h2>
    <asp:GridView runat="server" DataSourceID="srcIlmot"></asp:GridView>
</asp:Content>

