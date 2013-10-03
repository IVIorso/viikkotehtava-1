using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class viikkotehtava4 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet dataSet = new DataSet();
        dataSet.ReadXml("D:/F6415/viikkotehtava-1/App_Data/WanhatAutot.xml");
        this.autotView.DataMember = "Auto";
        this.autotView.DataSource = dataSet;
        this.autotView.DataBind();
        this.check.DataMember = "Auto";
        this.check.DataSource = dataSet;
        this.check.DataBind();
    }

}