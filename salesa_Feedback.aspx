<%@ Page Title="IIO13200 Välipalautteet" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesa_Feedback.aspx.cs" Inherits="NaytaPalautteet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Opintojakson palaute</h1>
    <table border="1">
        <tr>
            <td>
                <h2>Anna palaute</h2>
                <p>
                    Pvm:<asp:TextBox ID="txtDate" runat="server" TextMode="Date" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Pvm puuttuu" ForeColor="DarkRed" ControlToValidate="txtDate" Display="None"></asp:RequiredFieldValidator>
                    Nimi:<asp:TextBox ID="txtName" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Nimi puuttuu" ForeColor="DarkRed" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
                </p>
                <p>
                    Olen oppinut:<asp:TextBox ID="txtLearning" runat="server" TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Olen oppinut puuttuu" ForeColor="DarkRed" ControlToValidate="txtLearning" Display="Dynamic"></asp:RequiredFieldValidator>
                </p>
                <p>
                    Haluan oppia:<asp:TextBox ID="txtLearnMore" runat="server" TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Pvm puuttuu" ForeColor="DarkRed" ControlToValidate="txtLearnMore" Display="Dynamic"></asp:RequiredFieldValidator>
                </p>
                <p>Muista tehdä sanity-test kaikille!</p>
                <!-- validationSummary yhdistää validoinnit -->
            </td>
            <td>
                <h2>palaute jatkuu</h2>
                <p>
                    Hyvää:<asp:TextBox ID="txtGood" runat="server" TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Hyvää puuttuu" ForeColor="DarkRed" ControlToValidate="txtGood" Display="Dynamic"></asp:RequiredFieldValidator>
                </p>
                <p>
                    Parannettavaa:<asp:TextBox ID="txtBad" runat="server" TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Parannettavaa puuttuu" ForeColor="DarkRed" ControlToValidate="txtBad" Display="Dynamic"></asp:RequiredFieldValidator>
                </p>
                <p>
                    Muuta:<asp:TextBox ID="txtOther" runat="server" TextMode="MultiLine" />
                </p>
                <p>Muista tehdä sanity-test (paitsi muulle)!</p>
                <!-- validationSummary yhdistää validoinnit -->
                <asp:ValidationSummary ID="ValidationSummary1" HeaderText="Seuraavat tekstit puuttuvat:" ForeColor="Red"
                    DisplayMode="BulletList" EnableClientScript="true" runat="server" />
                <asp:Button ID="btnSend" runat="server" Text="Lähetä palaute" OnClick="btnSend_Click" />
            </td>
        </tr>
    </table>
    <h2>Palautteet</h2>
    <asp:Button ID="btnShow" runat="server" Text="Näytä palautteet" CausesValidation="False" OnClick="btnShow_Click" />
    <br />
    <asp:XmlDataSource ID="myXmlDataSource" runat="server" DataFile="~/App_Data/Palautteet.xml" XPath="/palautteet/palaute" TransformFile="~/App_Data/Palautteet.xsl"></asp:XmlDataSource>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <h3><asp:Label ID="lblMessages" runat="server"></asp:Label></h3>
</asp:Content>