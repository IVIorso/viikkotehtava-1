<%@ Page Title="IIO13200 kotisivu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesa_indexMP.aspx.cs" Inherits="salesa_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h1>Viikon 37 tuntiharkat</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Viikkotehtävän 0 ratkaisus</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/salesa_DBDemo.aspx">Viinit </asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/salesa_LocalDBDemo.aspx">Paikalliset elokuvat</asp:HyperLink>
        <br />
        <h2>Viikon 38 tuntiharkat</h2>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/salesa_age.aspx">Iän laskenta Kalenter-komponentilla</asp:HyperLink>
        <h2>Viikkotehtävät 1 ja 2</h2>
        <asp:TextBox ID="txtName" runat="server" Text="tähän nimesi" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Välitä parametrina" />
        <asp:Button ID="Button2" runat="server" Text="Tallenna Sessioniin" />
        <asp:Button ID="Button3" runat="server" Text="Tallenna Cookiehin" />
        <h2>Viikon 39 tuntiharkat</h2>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/salesa_dbcontrols.aspx">Demo of Databound Controls</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/salesa_dbcontrols2.aspx">Demo of Databound Controls for Single data</asp:HyperLink>
        <h2>Viikon 40 tuntiharkat</h2>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/salesa_rssfeeds.aspx">RSSFeedit 3 eri lähteestä</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/salesa_FinnKinoMovies.aspx">FinnKinon rainat </asp:HyperLink><br />
        <h2>Viikon 41 tuntiharjoitus</h2>
        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/salesa_Feedback.aspx">Opintojakson välipalaute</asp:HyperLink><br />
        <h2>Viikon 43 tuntiharjoitus</h2>
        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/MyRegex2.aspx">Regular Expression & Styles</asp:HyperLink><br />
        <h2>Viikon 44 tuntiharjoitus</h2>
        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/salesa_HaeIlmot.aspx">Ilmoittautumiset@DemoxOy</asp:HyperLink><br />
        <h2>Viikon 45 tuntiharjoitus</h2>
        <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/salesa_HaeIlmot2.aspx">Ilmoittautumiset2@DemoxOy</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/salesa_HaeIlmot2B.aspx">Ilmoittautumiset2B@DemoxOy</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/salesa_HaeIlmot3.aspx">Ilmoittautumiset3@DemoxOy</asp:HyperLink><br />
    </div>

</asp:Content>

