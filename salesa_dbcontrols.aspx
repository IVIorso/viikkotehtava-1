<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesa_dbcontrols.aspx.cs" Inherits="salesa_dbcontrols" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Databound Controls</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>ASP.NET Databound Controls</h1>
    <!-- DataSource määrittely -->
    <asp:SqlDataSource 
        ID="srcMovies" 
        ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=Movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
        SelectCommand="SELECT title, director, year FROM Movies ORDER BY title"
        runat="server">
    </asp:SqlDataSource>
    <!-- Kontrollit -->
    <h1>Controls to display a set of data</h1>
    <h2>Gridview</h2>
    <p>Displays a set of data items in an HTML table. This control enables displaying, sorting, paging, selecting and editing data.</p>
    <asp:GridView ID="GridView1" 
        DataSourceID="srcMovies" runat="server" />
    <h2>DataList kontrolli</h2>
    <p>Datalist esittää datan HTML-taulussa, määritetään esitettävä data ItemTemplatella.</p>
    <asp:DataList ID="DataList1" DataSourceID="srcMovies" runat="server">
        <ItemTemplate>
            Elokuvan <%#Eval("title") %> on ohjannut <%#Eval("director") %> 
        </ItemTemplate>
    </asp:DataList>
    <h2>Repeater -kontrolli</h2>
    <p>Repeater näyttää datarivejä käyttäen templatea, ei renderoi automaattisesti HTML-taulua</p>
    <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server" >
        <ItemTemplate>
         Movie <%#Eval("title")  %> directed by <b><%#Eval("director") %></b>
        </ItemTemplate>
    </asp:Repeater>
    <h2>ListView -kontrolli</h2>
    <p>Tämäkin näyttää datarivejä käyttäen templatea, tukee sorttausta, sivutusta ja datan editointia</p>
    <asp:ListView ID="ListView1" DataSourceID="srcMovies" runat="server">
        <LayoutTemplate>
            <div id="itemPlaceholder" runat="server" />
            <asp:DataPager ID="pager1" PageSize="4" runat="server">
                <Fields>
                    <asp:NumericPagerField />
                </Fields>
            </asp:DataPager> 
        </LayoutTemplate>
        <ItemTemplate>
         Movie <b> <%#Eval("title")  %> </b> directed by <%#Eval("director") %></br>
        </ItemTemplate>

    </asp:ListView>
</asp:Content>

