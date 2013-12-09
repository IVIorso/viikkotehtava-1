<%@ Page Title="" Language="C#" MasterPageFile="~/harjoitustyo.master" AutoEventWireup="true" CodeFile="screenshot.aspx.cs" Inherits="screenshot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1>Screenshots</h1>
    <h2>Ingame screenshot</h2>
    
    <asp:Image runat="server"
 AlternateText="Ingame Screenshot"
        ImageUrl="images/Ingame.JPG" ToolTip="Ingame screenshot" /></br>
    Ingame screenshot, here you can see Npcs, they give you quests and they lead you to battle.



    <h2>Quests screenshot</h2>
     <asp:Image runat="server"
 AlternateText="Ingame Screenshot"
        ImageUrl="images/Quests.JPG" ToolTip="Quests screenshot" /></br>
    Here at about center of the screen you can see quests. The first one is completed, the second one is about to be.

     <h2>Inventory screenshot</h2>
     <asp:Image  runat="server"
 AlternateText="Inventory Screenshot"
        ImageUrl="images/Inventory.JPG" ToolTip="Inventory screenshot" /></br>
    Here you can see inventory. It tells you which items you have and their stats.

     <h2>Battle screenshot</h2>
     <asp:Image runat="server"
 AlternateText="Battle Screenshot"
        ImageUrl="images/Battle.JPG" ToolTip="Battle screenshot" /></br>
    Here is a sapmle of battle. Fight against slimes.
</asp:Content>

