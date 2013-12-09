using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class salesa_records2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetCheapRecords_Click(object sender, EventArgs e)
    {
      //haetaan levytiedot DataTableen tai DataSettiin
      //tämä onnistuu heittämällä vain DataSetillä
      DataSet ds = new DataSet();
      DataTable dt;
      //dt = new DataTable();
      ds.ReadXml(MapPath("~/App_Data/Records2.xml"));
      dt = ds.Tables[0];
      //kytketään kontrolliin
      //GridView1.DataSource = ds; //toimii jos yksi taulu
      GridView1.DataSource = dt;
      GridView1.DataBind();
    }
}