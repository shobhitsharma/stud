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

public partial class useracc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            mstudent m = new mstudent();
            m.enrolmentno = TextBox1.Text;
            m.firstname = TextBox2.Text;
            m.lastname = TextBox3.Text;
            m.courseid = TextBox4.Text;
            m.referenceno = TextBox5.Text;
            m.address1 = TextBox6.Text;
            m.address2 = TextBox7.Text;
            m.address3 = TextBox11.Text;
            m.city = TextBox8.Text;
            m.pin = TextBox12.Text;
            m.state = TextBox13.Text;
            m.email = TextBox9.Text;
            m.dob = TextBox14.Text;
            m.fathername = TextBox15.Text;
            m.mothername = TextBox16.Text;
            m.category = TextBox17.Text;
            m.gender = TextBox18.Text;
            m.phone = TextBox19.Text;
            mstudent.insert(m);
            mpassword k = new mpassword();
            k.username = TextBox1.Text;
            k.password = TextBox2.Text;
            k.usertype = "student";
            mpassword.insert(k);
       
    }
}
