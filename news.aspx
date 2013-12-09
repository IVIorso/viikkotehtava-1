<%@ Page Title="" Language="C#" MasterPageFile="~/harjoitustyo.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>
        Welcome to Tales of Estelia News section!
        <asp:Label ID="lbl_test" runat="server" Text=".."></asp:Label>
    </h1>

    
   
   <div>
       If you cannot add news, <a href="Login.aspx" title="Log in">Log in</a>
   <asp:ListView ID="ListNews" runat="server" DataSourceID="XmlDataSource1">
   <LayoutTemplate>
   <div id="ItemPlaceHolderContainer" runat ="server">
        <span id="ItemPlaceHolder" runat ="server"/>
   </div>
   </LayoutTemplate>
   <ItemTemplate>
   <br/>
  
   <br/>
   <h2><%#XPath("title") %></h2>
   <p>
   <%#XPath("contents")%>
   </p>
   <br/>
   <%#XPath("date")%>
   <br/>
   ------------------------------------------------------------------------------
   <br/>
   </ItemTemplate>
   
   
   
   </asp:ListView>
   
       <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XML/News.xml">
       </asp:XmlDataSource>
   
   </div>
   
   <%if (Session["Login"] != null)
     { %>

   <div>
   <h3 style="font-family: 'Bodoni MT Black'; color: #000000;">Add topic</h3>
   <asp:TextBox runat="server" ID="txtTitle" BorderColor="Black" 
           ></asp:TextBox>
   <br/>
   <h3 style="font-family: 'Bodoni MT Black'; color: #000000;">Add text</h3>
   <asp:TextBox runat="server" ID="txtContents" TextMode="Multiline" 
           BorderColor="Black" Height="166px" Width="411px"></asp:TextBox>
   <br/>


   <asp:Button runat="server" Text="Tallenna Tiedosto" ID="btnLisaa" 
           onclick="btnLisaa_Click" />
<% } %>

   </div>
   
  
   
        

     
</asp:Content>

