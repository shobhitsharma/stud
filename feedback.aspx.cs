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

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //GridView1.PageIndex = e.NewPageIndex;
        //feedback.select();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        feedback f = new feedback();
        f.name = TextBox1.Text;
        f.phone = TextBox2.Text;
        f.email = TextBox3.Text;
        f.address = TextBox4.Text;
        f.city = TextBox5.Text;
        f.feedback1 = TextBox6.Text;
        feedback.insert(f);
    }
}
