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

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("branchrslt.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    SqlCommand cmd;
    SqlConnection cn;
    SqlDataReader dr;
    string q;
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        bing();

    }

    private void bing()
    {
        q = "select * from mresult where enrolmentno='" + TextBox3.Text + "' and batchid='" + TextBox2.Text + "'";
        cn = new SqlConnection("initial catalog=inst_mgmt_sys; integrated security=true; data source=.\\sqlexpress");
        cn.Open();
        cmd = new SqlCommand(q, cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
}
