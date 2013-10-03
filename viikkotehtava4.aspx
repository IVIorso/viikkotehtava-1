<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viikkotehtava4.aspx.cs" Inherits="viikkotehtava4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1>Viikkotehtävä 4</h1>
    <p>
        Kun käyttäjä surffaa sivulle esitetään oletusarvoisesti käyttäjälle neljän sattuman varaisesti valitun auton tiedot: merkki, malli, vuosimalli ja hinta. <br />
        Käyttäjälle on myös toiminallisuus jolla hän voi: <br />
        a) valita näytettäväksi listattuna kaikki myynnissä olevat autot joko hinnan mukaan nousevassa/laskevassa järjestyksessä <br />
        b) valitun automerkin autot, automerkin käyttäjä valitsee listasta tai comboxista, eli hän EI kirjoita sitä <br />
        c) haku, jolloin käyttäjä kirjoittaa hakukenttään haluamansa hakusanan, jonka jälkeen haetaan vastaavia merkkijonoa merkki- ja mallisarakkeista <br />

  
   
   <asp:GridView id="autotView" runat="server" 
            AutoGenerateColumns="False" >
                <Columns>
                    <templatefield>  
                <itemtemplate>  
<checkbox id="chkOrdr" runat="server"></checkbox>  
</itemtemplate>  
<HeaderTemplate>  
<asp:CheckBox ID="chkMainheadr"  
OnCheckedChanged="chkMainheadr_OnCheckedChanged"  
AutoPostBack="true" runat="server" />  
</HeaderTemplate>  
  
</templatefield>  

                    <asp:BoundField DataField="merkki" HeaderText="Merkki"/>
                    <asp:BoundField DataField="malli" HeaderText="Malli"/>
                    <asp:BoundField DataField="vm" HeaderText="Vuosimalli"/>
                    <asp:BoundField DataField="myyntiHinta" HeaderText="Hinta"/>

                </Columns>
     
        </asp:GridView>
    
        <asp:CheckBoxList ID="check" runat="server"  DataTextField="merkki" >
   
   
     </asp:CheckBoxList>
     <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/WanhatAutot.xml"></asp:XmlDataSource>
    
     
      </p>

</asp:Content>

