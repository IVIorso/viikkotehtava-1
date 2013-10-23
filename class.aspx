<%@ Page Title="" Language="C#" MasterPageFile="~/harjoitustyo.master" AutoEventWireup="true" CodeFile="class.aspx.cs" Inherits="_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Classes</h1>
    Here are the classes:
     <asp:DataList ID="dtlist" runat="server" RepeatColumns="1" CellPadding="5" >
   
<ItemTemplate>
          <asp:Image Width="100" ID="Image1" ImageUrl='<%# String.Format("{1}\\{0}", Eval("Name"), Eval("Directory")) %>'
            runat="server" />
        <br />
        <asp:Label id="lblImageSrc" runat="server" Text='<%# String.Format("{1}\\{0}", Eval("Name"), Eval("Directory")) %>'></asp:Label>
            
         
    </ItemTemplate> 


    
    </asp:DataList>
    
</asp:Content>

