<%@ Page Title="RegularExpressionTesti" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
    CodeFile="MyRegex2.aspx.cs" Inherits="MyRegex2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Regular Expression testi</h1>
    <h2>Kirjoita oheiseen textboxiin testattava teksti:</h2>
    <asp:TextBox ID="txtTeksti" runat="server" />
    <asp:Button ID="btnValidate1" runat="server" Text="Validate text" OnClick="btnValidate1_Click"  />
    <asp:Button ID="btnValidate2" runat="server" Text="Validate email" OnClick="btnValidate2_Click" />
    <br />
    <asp:Label id="lblResult" Text="[tähän onko valid vai ei]" runat="server" />
    <h2>Sivun teeman vaihto</h2>
    <asp:Image ID="Image1" SkinID="CompanyLogo" runat="server" />
    <asp:HyperLink ID="hyperlink1" runat="server" 
        NavigateUrl="~/MyRegex2.aspx?theme=Kaunis">Kaunis-teema</asp:HyperLink>
    <asp:HyperLink ID="hyperlink2" runat="server" 
        NavigateUrl="~/MyRegex2.aspx?theme=Ruma">Ei niin kaunis-teema</asp:HyperLink>
</asp:Content>

