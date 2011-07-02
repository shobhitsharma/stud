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
/// Summary description for malumni
/// </summary>
public partial class malumni
{
    public static malumni[] select()
    {
        using (var data = new instDataContext())
        {
            return data.malumnis.ToArray();
        }
    }
    public static void insert(malumni m)
    {
        using (var data = new instDataContext())
        {
            data.malumnis.InsertOnSubmit(m);
            data.SubmitChanges();
        }
    }
    public static void update(malumni m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.malumnis.Single(j => j.enrolmentno == m.enrolmentno);
            obj.employed = m.employed;
            obj.companyname = m.companyname;
            obj.designation = m.designation;
            obj.doj = m.doj;
            obj.dol = m.dol;
            obj.co_webpage = m.co_webpage;
            obj.co_phone = m.co_phone;
            obj.co_email = m.co_email;
            obj.co_address2 = m.co_address2;
            obj.co_address1 = m.co_address1;
            obj.city = m.city;
            data.SubmitChanges();

        }
    }
   

}
