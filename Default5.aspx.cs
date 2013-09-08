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
using System.Data.SqlClient;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    string q;
    protected void Button1_Click(object sender, EventArgs e)
    {
        q = "select usertype from mpasswords where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cn = new SqlConnection("initial catalog=inst_mgmt_sys; integrated security=true; data source=.\\sqlexpress");
        cn.Open();
        cmd = new SqlCommand(q, cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr[0].ToString();
        }
        if (Label2.Text == "admin")
        { Response.Redirect("adminhome.aspx"); }
        else
        {
            if (Label2.Text == "faculty")
            { Response.Redirect("facultyhome.aspx"); }
            else
            {
                if (Label2.Text == "student")
                { Response.Redirect("studenthome.aspx"); }
                else
                {
                    if (Label2.Text == "alumni")
                    { Response.Redirect("alumnihome.aspx"); }
                    else
                    { Response.Write("YOU ARE NOT A VALID USER"); }
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
