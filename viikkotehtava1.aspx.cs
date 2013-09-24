using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viikkotehtava1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cook = new HttpCookie("cookname");


        cook.Values["str1"] = this.kayttajaTextBox.Text;
  

        cook.Expires.AddHours(1);
        Response.Cookies.Add(cook);



        if (Session["Name"] != null)
        {
            Session["Name"] = null;
        }

    }


    protected void muunninButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Valuuttamuunnin.aspx?Name=" +
        this.kayttajaTextBox.Text);

    }
    protected void sessionButton_Click(object sender, EventArgs e)
    {
        Session["Name"] = kayttajaTextBox.Text;
        Response.Redirect("~/Valuuttamuunnin.aspx");

    }
    protected void cookieButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Valuuttamuunnin.aspx");
        Response.Write(Request.Cookies["cookname"]["str1"]);
    }
}