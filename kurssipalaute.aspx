<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kurssipalaute.aspx.cs" Inherits="kurssipalaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    Täältä löytyy kurssipalaute. Se on tuossa Juuso Ruuth kohdassa.
    <h1>Anna palaute</h1>
    <br /> Päivämäärä: <asp:TextBox ID="pvmBox" runat="server" ></asp:TextBox>
     <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ControlToValidate="pvmBox" ErrorMessage="Antamasi päivämäärä ei ole valid. Anna uusi" ValidationExpression="^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\d\d$" ForeColor="Red"> </asp:RegularExpressionValidator><br />
     Nimi: <asp:TextBox ID="nimiBox" runat="server"></asp:TextBox><br />
    <asp:RegularExpressionValidator ID="regval1" runat="server" ControlToValidate="nimiBox" ValidationExpression="[a-zA-Z.\s]{1,40}$" ErrorMessage="Anna nimi uudestaan" ForeColor="Red"/>
    <br /> Olen oppinut: <asp:TextBox ID="oppinutBox" runat="server" Height="52px" Width="153px"></asp:TextBox>
     Haluan Oppia: <asp:TextBox ID="haluanBox" runat="server" Height="71px" Width="146px"></asp:TextBox><br />
    <br /> Hyvää: <asp:TextBox ID="hyvaaBox" runat="server" Height="57px" Width="166px"></asp:TextBox>
    Parannettavaa: <asp:TextBox ID="parannettavaaBox" runat="server" Height="65px" Width="135px"></asp:TextBox><br /><br />
    <br /> Muuta: <asp:TextBox ID="muutaBox" runat="server" Height="53px" Width="154px"></asp:TextBox>

    <asp:Button ID="palauteBtn" runat="server" Text="Lähetä Palaute" OnClick="palauteBtn_Click" />

   <asp:GridView id="palautteetView" runat="server" 
            AutoGenerateColumns="False" >
            <Columns>
                
                    <asp:BoundField DataField="pvm" HeaderText="PVM"/>
                    <asp:BoundField DataField="tekija" HeaderText="Tekijä"/>
                    <asp:BoundField DataField="opittu" HeaderText="Mitä olen oppinut"/>
                    <asp:BoundField DataField="haluanoppia" HeaderText="Mitä haluan oppia"/>
                    <asp:BoundField DataField="hyvaa" HeaderText="Mitä hyvää kurssissa oli"/>
                    <asp:BoundField DataField="parannettavaa" HeaderText="Mitä parannettavaa kurssissa oli"/>
                    <asp:BoundField DataField="muuta" HeaderText="Muuta?"/>
                </Columns>
     
        </asp:GridView>


<asp:RequiredFieldValidator id="pvmValid" runat="server"
  ControlToValidate="pvmBox"
  ErrorMessage="Päivämäärä täytyy olla"
  ForeColor="Red" Display="None" ></asp:RequiredFieldValidator>



    <asp:RequiredFieldValidator id="nimiValid" runat="server"
  ControlToValidate="nimiBox"
  ErrorMessage="Anna nimesi"
  ForeColor="Red" Display="None">
</asp:RequiredFieldValidator>




    <asp:RequiredFieldValidator id="opittuValid" runat="server"
  ControlToValidate="oppinutBox"
  ErrorMessage="Määritä mitä olet oppinut"
  ForeColor="Red" Display="None"></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator id="haluanValid" runat="server"
  ControlToValidate="haluanBox"
  ErrorMessage="Määritä mitä haluat oppia"
  ForeColor="Red"  Display="None">
</asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator id="hyvaaValid" runat="server"
  ControlToValidate="hyvaaBox"
  ErrorMessage="Määritä mikä oli hyvää"
  ForeColor="Red" Display="None">
</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator id="parannettavaaValid" runat="server"
  ControlToValidate="parannettavaaBox"
  ErrorMessage="Määritä mitä parannettavaa"
  ForeColor="Red" Display="None">
</asp:RequiredFieldValidator>

    


<asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Seuraavat kentät täyttämättä:"
ForeColor="Red"
DisplayMode="BulletList"
EnableClientScript="true"/>








    
     <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Palautteet.xml"></asp:XmlDataSource>
    

</asp:Content>

