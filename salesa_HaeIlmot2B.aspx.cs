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
      //suodatetaan käyttämällä SqlDatSourcen Select Parameters
      if (txtName.Text.Length > 0)
      {
        Response.Redirect("~/salesa_HaeIlmot2B.aspx?asioid=" + txtName.Text.Trim());
      }
    }
}