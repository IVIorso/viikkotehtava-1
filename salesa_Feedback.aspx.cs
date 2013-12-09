using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class NaytaPalautteet : System.Web.UI.Page
{
  //!!lisää web.configiin tarvittavat asetukset
  string urlToXml;
  string urlToSchema;
  protected void Page_Load(object sender, EventArgs e)
  {
    //tämä siltä varalta että jos urlit osoittavat App_Data-hakemistoon
    urlToXml = ConfigurationManager.AppSettings["palautteetXML"];
    if (!string.IsNullOrEmpty(urlToXml) && (urlToXml.Contains("~/App_Data/")))
      urlToXml = MapPath(urlToXml);
    urlToSchema = ConfigurationManager.AppSettings["palautteetXSD"];
    if (!string.IsNullOrEmpty(urlToSchema) && (urlToSchema.Contains("~/App_Data/")))
      urlToSchema = MapPath(urlToSchema);
    //kuluva pvm
    if (!IsPostBack)
      txtDate.Text = DateTime.Today.ToShortDateString();
  }
  protected void btnShow_Click(object sender, EventArgs e)
  {
    if (!string.IsNullOrEmpty(urlToXml) && !string.IsNullOrEmpty(urlToSchema))
    {
      //neljä erilaista tapaa hakea XML-dataa 
      //FillGridviewWithXmlDataSource();
      //FillGridviewWithDataTable();
      FillGridviewWithXDocument();
      //FillGridviewWithXmlDocument();
    }
    else
      lblMessages.Text = "Tarvittavia XML-tiedostoja ei löydy";

  }
  protected void btnSend_Click(object sender, EventArgs e)
  {
    SaveToXMLVerXmlDocument();
  }
  #region METODIT
  protected void FillGridviewWithXmlDataSource()
  {
    //tintataan Palautteet Gridiin XmlDataSource avulla
    GridView1.DataSource = myXmlDataSource;
    GridView1.DataBind();
    //lblMessages.Text = string.Format("Yhteensä {0} palautetta annettu", dt.Rows.Count);
  }
  protected void FillGridviewWithDataTable()
  {
    //tintataan Palautteet datatablen kautta Gridiin
    //heittää virheen jos yrittää suoraan eli DataTablea käytettäessä pitää kertoa ensin skeema eli XSD
    DataTable dt = new DataTable("palaute");
    dt.ReadXmlSchema(urlToSchema);
    dt.ReadXml(urlToXml);
    GridView1.DataSource = dt;
    GridView1.DataBind();
    lblMessages.Text = string.Format("Yhteensä {0} palautetta annettu", dt.Rows.Count);
  }
  protected void FillGridviewWithXDocument()
  {
    //Palautteet Gridiin XDocumentin avulla
    XDocument xdoc = XDocument.Load(urlToXml);
    var result = from e in xdoc.Root.Elements("palaute")
                 select
                 new
                 {
                   Pvm = e.Element("pvm").Value,
                   Nimi = e.Element("tekija").Value,
                   Opittu = e.Element("opittu").Value,
                   Haluan_oppia = e.Element("haluanoppia").Value,
                   Hyvää = e.Element("hyvaa").Value,
                   Parannettavaa = e.Element("parannettavaa").Value,
                   Muuta = e.Element("muuta").Value,
                 };
    GridView1.DataSource = result;
    GridView1.DataBind();
    lblMessages.Text = string.Format("Haettu {0} palautetta ", result.Count());
  }
  protected void FillGridviewWithXmlDocument()
  {
    //kesken
    XmlDocument doc = new XmlDocument();
    doc.Load(urlToXml);
    XmlNodeList nodes = doc.SelectNodes("/palautteet/palaute");
    GridView1.DataSource = nodes;
    GridView1.DataBind();
  }
  protected void SaveToXMLVerDatatable()
  {
    //tallentaa DataTable XML:ään
    DataTable dt = new DataTable("palaute");
    dt.ReadXmlSchema(urlToSchema);
    dt.ReadXml(urlToXml);
    //uusi rivi datatableen
    DataRow dr = dt.NewRow();
    dr[0] = 1;// txtDate.Text;
    dr[1] = txtName.Text;
    dr[2] = "demo2";
    dr[3] = "demo3";
    dr[4] = "demo4";
    dr[5] = "demo5";
    dr[6] = "demo6";
    dt.Rows.Add(dr);
    //tämä kyllä toimi mutta muutti skeeman
    dt.WriteXml(urlToXml, XmlWriteMode.WriteSchema, true);
  }
  protected void SaveToXMLVerXmlDocument()
  {
    //hakee olemassaolevan XML:n ja lisää siihen uuden palaute-elementin
    XmlDocument xmldoc = new XmlDocument();
    xmldoc.Load(urlToXml);
    //luodaan elementit
    XmlElement juuri = xmldoc["palautteet"];
    XmlElement palaute = xmldoc.CreateElement("palaute");
    List<XmlElement> elementit = new List<XmlElement>();
    elementit.Add(xmldoc.CreateElement("pvm"));
    elementit.Add(xmldoc.CreateElement("tekija"));
    elementit.Add(xmldoc.CreateElement("opittu"));
    elementit.Add(xmldoc.CreateElement("haluanoppia"));
    elementit.Add(xmldoc.CreateElement("hyvaa"));
    elementit.Add(xmldoc.CreateElement("parannettavaa"));
    elementit.Add(xmldoc.CreateElement("muuta"));
    //asetetaan arvot elementeille
    elementit[0].InnerText = string.Format("{0}{1}{2}", DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);
    elementit[1].InnerText = txtName.Text;
    elementit[2].InnerText = txtLearning.Text;
    elementit[3].InnerText = txtLearnMore.Text;
    elementit[4].InnerText = txtGood.Text;
    elementit[5].InnerText = txtBad.Text;
    elementit[6].InnerText = txtOther.Text;
    //kiinnitetään elementit palautteeseen
    foreach (XmlElement xe in elementit)
    {
      palaute.AppendChild(xe);
    }
    juuri.AppendChild(palaute);
    xmldoc.Save(urlToXml);
    //päivitetään
    FillGridviewWithXDocument();
  }
  #endregion
}