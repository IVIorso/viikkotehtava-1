<%@ Page Title="" Language="C#" MasterPageFile="~/harjoitustyo.master" AutoEventWireup="true" CodeFile="class.aspx.cs" Inherits="_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Classes</h1>
    Here are the classes:
 
              
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Classes.xml"></asp:XmlDataSource>

   <asp:Table ID="table" runat="server" border="1">
       <asp:TableRow VerticalAlign="Top" HorizontalAlign="Justify">
          
           <asp:TableCell>
            <asp:DataList ID="dlist1" runat="server" HorizontalAlign="Left" GridLines="Both">
                <ItemTemplate>
                 <asp:Image Width="100" ID="Image1" ImageUrl='<%# Bind("Type", "~/ClassImg/{0}.png") %>' runat="server" /> 
              
           <br />
                        Name: <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name")%>'></asp:Label>
                     <br />
                     Description: <asp:Label ID="lblDes" runat="server"   Text='<%# Eval("Description")%>'></asp:Label>
                    
                
                </ItemTemplate> 
                </asp:DataList>

                 
               
           </asp:TableCell>         
       </asp:TableRow>
  
   </asp:Table>


    
</asp:Content>

