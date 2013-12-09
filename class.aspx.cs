using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class _class : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string classes;
        classes  = MapPath(ConfigurationManager.AppSettings["ClassesPath"]);
        DirectoryInfo dir = new DirectoryInfo(MapPath("ClassImg"));
        FileInfo[] files = dir.GetFiles();
        ArrayList listItems = new ArrayList();
        foreach (FileInfo info in files)
        {
            if (info.Extension == ".jpg" || info.Extension == ".jpeg" || info.Extension == ".gif" || info.Extension == ".png")
            {
                listItems.Add(info);
            }
        }
       
       
       
        DataSet dataSet = new DataSet();
        dataSet.ReadXml(classes);
       
        dlist1.DataSource = dataSet;
        dlist1.DataBind();
        
    }


  


}