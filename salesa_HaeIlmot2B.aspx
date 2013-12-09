<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesa_HaeIlmot2B.aspx.cs" Inherits="salesa_HaeIlmot2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Syksyn 2013 ilmoittautumiset</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="srcIlmot" 
        ConnectionString=  "<%$ ConnectionStrings:Ilmot%>"
        SelectCommand="SELECT asioid, lastname, firstname, date FROM lasnaolot WHERE course like 'IIO13200%' AND asioid = @asioid ORDER BY asioid" runat="server">
        <SelectParameters>
          <asp:QueryStringParameter Name="asioid" DbType = "String" QueryStringField="asioid"/>
       </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblName" Text="ASIOID:" runat="server"/>
    <asp:TextBox ID="txtName" runat="server" />
    <asp:Button ID="btnGet" Text="Hae" runat="server" OnClick="btnGet_Click"/>
    <h2>Syksyn läsnäolot</h2>
    <asp:GridView runat="server" DataSourceID="srcIlmot"></asp:GridView>
</asp:Content>

