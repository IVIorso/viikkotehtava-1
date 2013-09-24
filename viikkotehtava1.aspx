<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viikkotehtava1.aspx.cs" Inherits="viikkotehtava1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




   <h1> Tervetuloa, annatko nimesi jotta pääset valuuttamuuntimeen:</h1><br />
        <asp:TextBox ID="kayttajaTextBox" runat="server"></asp:TextBox><br />
        <asp:Button ID="muunninButton" runat="server" Text="Valuuttamuuntimeen" />
        <asp:Button ID="sessionButton" runat="server" Text="Tallenna Session" />
        <asp:Button ID="cookieButton" runat="server" Text="Tallenna Cookie" />

     
   


</asp:Content>