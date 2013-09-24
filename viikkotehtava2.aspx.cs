using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viikkotehtava2 : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
 
     
 
        if (Session["Palkka3"] == null)
        {
            //kerroinLuku.Text = (float.Parse((63 - int.Parse(System.Configuration.ConfigurationManager.AppSettings["Ika"].ToString()) * 5.5).ToString())).ToString();
            kerroinLuku.Text = ((63 - int.Parse(System.Configuration.ConfigurationManager.AppSettings["Ika"]))*5.5).ToString();
        }
        else
        {
            //kerroinLuku.Text = (float.Parse(((63 - int.Parse(Session["Ika"].ToString())) * 5.5).ToString()).ToString());
            kerroinLuku.Text = ((63 - int.Parse(Session["Ika"].ToString())) * 5.5).ToString();
        }
 
        if (Session["Palkka2"] == null)
        {
            lakiLuku.Text = (int.Parse(System.Configuration.ConfigurationManager.AppSettings["Palkka"]) / 2).ToString();
        }
        else
        {
            lakiLuku.Text = Session["Palkka2"].ToString();
        }
 
        if (Session["Ika"] == null)
        {
            ikaBox.Text = System.Configuration.ConfigurationManager.AppSettings["Ika"].ToString();          
        }
        else
        {
            ikaBox.Text = Session["Ika"].ToString();          
        }
 
        if (Session["Palkka"] == null)
        {
            palkkaBox.Text = System.Configuration.ConfigurationManager.AppSettings["Palkka"].ToString();            
        }
        else
        {
            palkkaBox.Text = Session["Palkka"].ToString();          
        }
 
 
 
        if (Session["Elake"] == null)
        {            
            arvioMaara.Text = (float.Parse(lakiLuku.Text) - float.Parse(kerroinLuku.Text)).ToString();
            Session["Elake"] = arvioMaara.Text;
        }
        else
        {
            arvioMaara.Text = Session["Elake"].ToString();          
        }
 
 
    }
   
    protected void ikaMiinus_Click(object sender, EventArgs e)
    {
        if (int.Parse(ikaBox.Text) > 18)
        {
            ikaBox.Text = (int.Parse(ikaBox.Text) - 1).ToString();
            Session["Ika"] = ikaBox.Text;
            Session["Palkka3"] = float.Parse(((63-int.Parse(ikaBox.Text))*5.5).ToString());
            Session["Elake"] = (float.Parse(lakiLuku.Text) - float.Parse(kerroinLuku.Text)).ToString();
            Response.Redirect(Request.RawUrl);
        }
    }
    protected void ikaPlus_Click(object sender, EventArgs e)
    {
        if (int.Parse(ikaBox.Text) < 64)
        {
            ikaBox.Text = (int.Parse(ikaBox.Text) + 1).ToString();
            Session["Ika"] = ikaBox.Text;
            Session["Palkka3"] = float.Parse(((63-int.Parse(ikaBox.Text))*5.5).ToString());
            Session["Elake"] = (float.Parse(lakiLuku.Text) - float.Parse(kerroinLuku.Text)).ToString();
            Response.Redirect(Request.RawUrl);
        }
    }
 
 
 
 
 
    protected void palkkaMiinus_Click(object sender, EventArgs e)
    {
        if (int.Parse(palkkaBox.Text) > 0)
        {
            palkkaBox.Text = (int.Parse(palkkaBox.Text) - 100).ToString();
            Session["Palkka"] = palkkaBox.Text;
            Session["Palkka2"] = (int.Parse(palkkaBox.Text) / 2).ToString();
            Session["Elake"] = (float.Parse(lakiLuku.Text) - float.Parse(kerroinLuku.Text)).ToString();
            Response.Redirect(Request.RawUrl);
        }
    }
    protected void palkkaPlus_Click(object sender, EventArgs e)
    {
        if (int.Parse(palkkaBox.Text) < 10000)
        {
            palkkaBox.Text = (int.Parse(palkkaBox.Text) + 100).ToString();
            Session["Palkka"] = palkkaBox.Text;
            Session["Palkka2"] = (int.Parse(palkkaBox.Text) / 2).ToString();
            Session["Elake"] = (float.Parse(lakiLuku.Text) - float.Parse(kerroinLuku.Text)).ToString();
            Response.Redirect(Request.RawUrl);
        }
    }
    protected void Refresh_Click(object sender, EventArgs e)
    {
        Session["Ika"] = null;
        Session["Palkka"] = null;
        Session["Palkka2"] = null;
        Session["Palkka3"] = null;
        Session["Elake"] = null;
        Session["Vari"] = null;
        lakiLuku.Text = (int.Parse(System.Configuration.ConfigurationManager.AppSettings["Palkka"]) / 2).ToString();
        Response.Redirect(Request.RawUrl);
    }
 
 
 
 

}