using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class kurssipalaute : System.Web.UI.Page
{
    string fileLocation;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        fileLocation = MapPath(ConfigurationManager.AppSettings["palautePath"]);
        DataSet dataSet = new DataSet();
        dataSet.ReadXml(fileLocation);
        this.palautteetView.DataMember = "Palaute";
        this.palautteetView.DataSource = dataSet;
        this.palautteetView.DataBind();
        

    }
    protected void palauteBtn_Click(object sender, EventArgs e)
    {


        if (!File.Exists(fileLocation))
        {
            XmlTextWriter writer = new XmlTextWriter(fileLocation, null);
            writer.WriteStartElement("palautteet");
            writer.WriteEndElement();
            writer.Close();
        }

        // Load existing clients and add new 
        XElement xml = XElement.Load(fileLocation);
        xml.Add(new XElement("palaute",
        new XElement("pvm", pvmBox.Text),
        new XElement("tekija", nimiBox.Text),
        new XElement("opittu", oppinutBox.Text),
        new XElement("haluanoppia", haluanBox.Text),
        new XElement("hyvaa", hyvaaBox.Text),
        new XElement("parannettavaa", parannettavaaBox.Text),
        new XElement("muuta", muutaBox.Text)));
        xml.Save(fileLocation);
    }
}