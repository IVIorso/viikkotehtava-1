<%@ Page Title="" Language="C#" MasterPageFile="~/harjoitustyo.master" AutoEventWireup="true" CodeFile="Heroes.aspx.cs" Inherits="Heroes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Heroes</h1>
    <p>Here is list of the heroes: 
        
        <asp:GridView ID="GridView1" DataSourceID="Heroes.xml" runat="server" />
    </p>
</asp:Content>

