﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="f6415_DBDemo.aspx.cs" Inherits="f6415_DBDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>Viinikellari</title>
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
    <h1>Makoisat Viinit</h1>
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="DeliverID" HeaderText="DeliverID" SortExpression="DeliverID" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="wineType" HeaderText="wineType" SortExpression="wineType" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ViiniConnectionString1 %>" DeleteCommand="DELETE FROM [wine] WHERE [ID] = @ID" InsertCommand="INSERT INTO [wine] ([Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock]) VALUES (@Name, @Country, @DeliverID, @Year, @Price, @wineType, @InStock)" ProviderName="<%$ ConnectionStrings:ViiniConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock] FROM [wine]" UpdateCommand="UPDATE [wine] SET [Name] = @Name, [Country] = @Country, [DeliverID] = @DeliverID, [Year] = @Year, [Price] = @Price, [wineType] = @wineType, [InStock] = @InStock WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
      
    
    


</asp:Content>