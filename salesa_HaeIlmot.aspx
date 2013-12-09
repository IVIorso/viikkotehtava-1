<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesa_HaeIlmot.aspx.cs" Inherits="salesa_HaeIlmot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Syksyn 2013 ilmoittautumiset</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="srcIlmot" 
     ConnectionString=  "<%$ ConnectionStrings:Ilmot%>"
     SelectCommand="SELECT asioid, lastname, firstname, date FROM lasnaolot WHERE course like 'IIO13200%' ORDER BY asioid" runat="server">
    </asp:SqlDataSource>
    
    <h2>Syksyn läsnäolot</h2>
    <asp:GridView runat="server" DataSourceID="srcIlmot"></asp:GridView>

</asp:Content>

