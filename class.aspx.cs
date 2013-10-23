using System;
using System.Collections;
using System.Collections.Generic;
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
            listItems.Add(info);
        }
        dtlist.DataSource = listItems;
        dtlist.DataBind();
    }


  
 
}