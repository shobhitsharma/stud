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
using inst_mgmt;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        administration.select();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        administration a = new administration();
        a.name = TextBox1.Text;
        a.designation = TextBox2.Text;
        a.number = TextBox3.Text;
        a.email = TextBox4.Text;
        administration.insert(a);
        administration.select();
    }
}
