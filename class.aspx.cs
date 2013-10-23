using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _class : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


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
        dataSet.ReadXml("D:/F6415/viikkotehtava-1/App_Data/Classes.xml");
       
        dlist1.DataSource = dataSet;
        dlist1.DataBind();
        
    }


  


}