using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyRegex2 : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        //teeman vaihtaminen koodissa täytyy tehdä joko PreInit-tapahtumankäsittelijässä tai ennnen sitä
        switch (Request.QueryString["theme"])
        {
            case "Kaunis":
                Page.Theme = "Kaunis";
                break;
            case "Ruma":
                Page.Theme = "Ruma";
                break;
            default:
                break;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnValidate1_Click(object sender, EventArgs e)
    {
      //tarkistetaan että annettu teksti täyttää vaatimukset eli vain kirjaimia
      //Regex vaatii using System.Text.RegularExpressions
      //linkit Regular Expressions in ASP.NET http://msdn.microsoft.com/en-us/library/ms972966.aspx
      string pattern = @"^[a-öA-Ö]*$";
      lblResult.Text = Validoi(txtTeksti.Text, pattern);
    }

    protected void btnValidate2_Click(object sender, EventArgs e)
    {
      //validoi että email
      //http://www.regular-expressions.info/email.html
      string pattern;
      //pattern = @"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
      //pattern = @"\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b.";
      pattern = @"\b[a-zA-Z0-9._%+-]+@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}\b";
      lblResult.Text = Validoi(txtTeksti.Text, pattern);
    }
    protected string Validoi(string textTovalidate, string patteri)
    {
      Regex regex = new System.Text.RegularExpressions.Regex(patteri);
      bool matsaa = regex.IsMatch(txtTeksti.Text);
      if (matsaa)
        return "Kelpaa";
      else
        return "Ei kelpaa";
    }
}