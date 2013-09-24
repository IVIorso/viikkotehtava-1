<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Valuuttamuunnin.aspx.cs" Inherits="Valuuttamuunnin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   <h1>Tervetuloa! :</h1>
        <asp:TextBox ID="kayttajaTextBox" runat="server" Enabled="False"></asp:TextBox><br /> 
    <br /> <br /> 
        <asp:TextBox ID="Muunnettava" runat="server" ></asp:TextBox><asp:Label ID="Markat" runat="server" Text="Markkaa"></asp:Label> <asp:Label ID="Virhe" runat="server" ForeColor="Red"></asp:Label>
    <br /> 
        <asp:TextBox ID="Muunnettu" runat="server" Enabled="False"></asp:TextBox><asp:Label ID="Euro" runat="server" Text="Euroa (€)"></asp:Label>
    <br /> 


    <asp:Button ID="Muunnin" runat="server" Text="Muunna" OnClick="Muunnin_Click" />
    <asp:Label ID="lkm" runat="server" Text=""></asp:Label>

</asp:Content>