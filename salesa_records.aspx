<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesa_records.aspx.cs" Inherits="salesa_records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>RocoPecords proudly presents</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="myRecords" DataFile="~/App_Data/Records.xml" runat="server" TransformFile="~/App_Data/Records.xsl" ></asp:XmlDataSource>
    <asp:XmlDataSource ID="myRecords1" DataFile="~/App_Data/Records.xml" runat="server"></asp:XmlDataSource>
    <asp:XmlDataSource ID="myRecords2" runat="server" DataFile="~/App_Data/Records2.xml"></asp:XmlDataSource>
    <h1>Osta hyvä veli tai sisko halpa levy</h1>
    <asp:GridView ID="gvLevyt" DataSourceID="myRecords" runat="server" AutoGenerateColumns="true"></asp:GridView>
</asp:Content>

