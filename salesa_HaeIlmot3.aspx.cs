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
      //täytetään ddl aspx:ssä
    }
    protected void btnGet_Click(object sender, EventArgs e)
    {
      //suodatetaan
      if (txtName.Text.Length > 0)
      {
        string kurssi = ddlCourses.SelectedValue;
        string sukunimi = txtName.Text;
        string sql = string.Format(
        "SELECT asioid, lastname, firstname, date FROM lasnaolot " +
        "WHERE course like '{0}' AND lastname like '{1}%' ORDER BY date", kurssi, sukunimi);
        srcIlmot.SelectCommand = sql;
      }
    }
}