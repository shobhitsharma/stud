using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for mstudent
/// </summary>
public  partial class mstudent
{
    public static mstudent[] select()
    {
        using (var data=new instDataContext())
        {
            return data.mstudents.ToArray();
        }
    }
    public static void insert(mstudent m)
    {
        using (var data = new instDataContext())
        {
            data.mstudents.InsertOnSubmit(m);
            data.SubmitChanges();
        }
    }
    public static void update(mstudent m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mstudents.Single(j => j.enrolmentno == m.enrolmentno);
            obj.firstname = m.firstname;
            obj.lastname = m.lastname;
            obj.courseid = m.courseid;
            obj.referenceno = m.referenceno;
            obj.address1 = m.address1;
            obj.address2 = m.address2;
            obj.address3 = m.address3;
            obj.city = m.city;
            obj.pin = m.pin;
            obj.phone = m.phone;
            obj.state = m.state;
            obj.email = m.email;
            obj.dob = m.dob;
            obj.fathername = m.fathername;
            obj.mothername = m.mothername;
            obj.category = m.category;
            obj.gender = m.gender;
            obj.phone = m.phone;
            data.SubmitChanges();
        }
    }
    public static void delete(mstudent m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mstudents.Single(j => j.enrolmentno == m.enrolmentno);
            data.mstudents.DeleteOnSubmit(obj);
            data.SubmitChanges();
        }
    }
}
