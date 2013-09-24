<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viikkotehtava2.aspx.cs" Inherits="viikkotehtava2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    
    <h1>IVIorson Eläkelaskuri!</h1>


    <asp:Label ID="Ikalbl" runat="server" Text="Ikä"></asp:Label><br />
    <asp:Button ID="ikaMiinus" runat="server" Text="-" OnClick="ikaMiinus_Click" />
    <asp:TextBox ID="ikaBox" runat="server" Enabled="False"></asp:TextBox>
    <asp:Button ID="ikaPlus" runat="server" Text="+" OnClick="ikaPlus_Click" style="width: 22px" />
     <asp:Label ID="vuotta" runat="server" Text="vuotta"></asp:Label>

    <br /><br />
    <asp:Label ID="Palkka" runat="server" Text="Palkka"></asp:Label><br />
    <asp:Button ID="palkkaMiinus" runat="server" Text="-" OnClick="palkkaMiinus_Click" />
    <asp:TextBox ID="palkkaBox" runat="server" Enabled="False"></asp:TextBox>
    <asp:Button ID="palkkaPlus" runat="server" Text="+" OnClick="palkkaPlus_Click" style="width: 22px" />
     <asp:Label ID="Maara" runat="server" Text="€"></asp:Label>
    <br /><br />
    <br />

    <asp:Label ID="lakiElake" runat="server" Text="Lakisääteinen eläke: "></asp:Label>

     <asp:Label ID="lakiLuku" runat="server" Text=""></asp:Label>
    <br /><br />
    <asp:Label ID="kerroin" runat="server" Text="Elinaikakertoimen vaikutus: "></asp:Label>
    <asp:Label ID="kerroinLuku" runat="server" Text=""></asp:Label>
    <br /><br />
    <asp:Label ID="Arvio" runat="server" Text="Arvio lakisääteisestä eläkkeestä: "></asp:Label>
    <br />
    <asp:TextBox ID="arvioMaara" runat="server"></asp:TextBox>
    <br /><br />

    <asp:Label ID="huom" runat="server" Text="HUOM! Laskurissa vielä ongelmana, että arvio tulee yhden clickkauksen perässä!" ForeColor="Red"></asp:Label>
</asp:Content>


