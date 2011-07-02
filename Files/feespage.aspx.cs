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
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        TextBox6.Visible = false;
        TextBox5.Visible = false;
        TextBox4.Visible = false;
        TextBox3.Visible = false;
        TextBox2.Visible = false;
        TextBox1.Visible = false;
        GridView1.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mfee k = new mfee();
        k.instalmentno = TextBox1.Text;
        k.courseid = TextBox2.Text;
        k.paidto = TextBox3.Text;
        k.duedate = TextBox4.Text;
        k.amount = TextBox5.Text;
        k.category = TextBox6.Text;
        mfee.insert(k);
        mfee.select();

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
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        TextBox6.Visible = true;
        TextBox5.Visible = true;
        TextBox4.Visible = true;
        TextBox3.Visible = true;
        TextBox2.Visible = true;
        TextBox1.Visible = true;
        GridView1.Visible = false;
        Button1.Visible = true;
        Button2.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        TextBox6.Visible = false;
        TextBox5.Visible = false;
        TextBox4.Visible = false;
        TextBox3.Visible = false;
        TextBox2.Visible = false;
        TextBox1.Visible = false;
        GridView1.Visible = true;
        Button1.Visible = false;
        Button2.Visible = false;

    }
}
