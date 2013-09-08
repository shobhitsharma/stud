using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        string str = "~/images/kl1.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
    {
        string str = "~/images/kl12.JPG";
        Response.Redirect("default7.aspx?picpath="+str);
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        string str = "~/images/kl2.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {
        string str = "~/images/kl3.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
        
    }
    protected void ImageButton22_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl4.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl5.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl6.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl7.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl9.jpg";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl10.jpg";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl11.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
    protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
    {

        string str = "~/images/kl8.JPG";
        Response.Redirect("default7.aspx?picpath=" + str);
    }
}
