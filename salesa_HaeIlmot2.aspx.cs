using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class salesa_HaeIlmot2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGet_Click(object sender, EventArgs e)
    {
      //suodatetaan
      if (txtName.Text.Length > 0)
      {
        string sukunimi = txtName.Text;
        string sql = string.Format(
        "SELECT asioid, lastname, firstname, date FROM lasnaolot " +
        "WHERE course like 'IIO13200%' AND lastname like '{0}%' ORDER BY date", sukunimi);
        srcIlmot.SelectCommand = sql;
        //ORDER BY asioid
      }
    }
}