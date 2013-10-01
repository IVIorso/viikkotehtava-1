<%@ Page Title="" Language="C#" MasterPageFile="~/harjoitustyo.master" AutoEventWireup="true" CodeFile="Heroes.aspx.cs" Inherits="Heroes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <p>Here is list of the heroes: </p>
       <asp:XmlDataSource ID="heroes" DataFile="~/app_Data/Heroes.xml" runat="server" TransformFile="~/App_Data/heroes.xslt"> </asp:XmlDataSource> 
        <asp:XmlDataSource ID="heroes1" DataFile="~/app_Data/Heroes.xml" runat="server" > </asp:XmlDataSource> 
        <asp:XmlDataSource ID="heroes2" DataFile="~/app_Data/Heroes2.xml" runat="server" > </asp:XmlDataSource> 
       <h1>Heroes</h1>
        <asp:GridView ID="heroesview" DataSourceID="heroes" runat="server" AutoGenerateColumns="true"></asp:GridView>
        
    
</asp:Content>

