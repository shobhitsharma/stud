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


public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pic = Request.QueryString["picpath"];
        Image1.ImageUrl = pic;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("default6.aspx");
    }
}
