<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DataSource.aspx.cs" Inherits="DataSource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource
          id="srcMovies"
          runat="server"
          DataSourceMode="DataReader"
          ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=Movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
          SelectCommand="SELECT title, director, year FROM movies">
      </asp:SqlDataSource>
  
    <h1>Controls to display a set of data</h1>
    <h2>Gridview</h2>
    <p>
        Displays a set of data items in a HTML table. This control enables
    </p>
    <asp:GridView ID="GridView1"
        DataSourceID="srcMovies" runat="server" />

     <h2>Listbox view</h2>
      <asp:ListBox
          id="ListBox1"
          runat="server"
          DataTextField="title"
          DataSourceID="srcMovies">
      </asp:ListBox>

    <h2>DataList</h2>
    <p>DataList displays data as in HTML Table</p>
    <asp:DataList ID="DataList1" DataSourceID="srcMovies" runat="server">
        <ItemTemplate>
            Elokuvan <%#Eval("title") %> on ohjannut <b><%#Eval("director") %></b>
        </ItemTemplate>
    </asp:DataList>

    <h2>Repeater</h2>

    <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server">
        <ItemTemplate>
            Movie <%#Eval ("title") %> directed by <b> <%#Eval ("director") %></b> <br />
        </ItemTemplate>
    </asp:Repeater>

    <h2>Listview</h2>
    <asp:ListView ID="ListView1" DataSourceID="srcMovies" runat="server">
     <LayoutTemplate>
          <div id="itemPlaceHolder" runat="server"/>
         <asp:DataPager ID="pager1" PageSize="4" runat="server">
             <Fields>
                 <asp:NumericPagerField />
             </Fields>
         </asp:DataPager>
     </LayoutTemplate>
        <ItemTemplate>
            Movie <%#Eval ("title") %> directed by <b> <%#Eval ("director") %></b> <br />
        </ItemTemplate>
    </asp:ListView>




</asp:Content>

