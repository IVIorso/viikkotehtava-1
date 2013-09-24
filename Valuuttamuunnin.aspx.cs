using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Valuuttamuunnin : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] != null)
        {
            kayttajaTextBox.Text = Session["Name"].ToString();
        }

        else if(Request.Cookies["cookname"]["str1"] != null)
        {
            this.kayttajaTextBox.Text = Request.Cookies["cookname"]["str1"];
        }
        
        else {
          
           this.kayttajaTextBox.Text = Request.QueryString["Name"];
        }

       i = 0;
       
    }
    protected void Muunnin_Click(object sender, EventArgs e)
    {
        i++;
        try
        {
            Virhe.Text = "";
            
            lkm.Text = "Laskutoimituksia " + i;
            Muunnettu.Text = (float.Parse(Muunnettava.Text) / (float)5.947).ToString();
           
        }
        catch (Exception) {
            Virhe.Text = "Virhe: Katsohan antamasi arvot";
        }
    }
}