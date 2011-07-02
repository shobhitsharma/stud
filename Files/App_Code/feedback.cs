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
/// Summary description for feedback
/// </summary>
public partial class feedback
{
    public static feedback[] select()
    {
        using (var data = new instDataContext())
        {
            return data.feedbacks.ToArray();
        }
    }
    public static void insert(feedback m)
    {
        using (var data = new instDataContext())
        {
            data.feedbacks.InsertOnSubmit(m);
            data.SubmitChanges();
        }
    }
    public static void update(feedback m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.feedbacks.Single(j => j.name == m.name);
            obj.phone = m.phone;
            obj.address = m.address;
            obj.city = m.city;
            obj.email = m.email;
            obj.feedback1 = m.feedback1;
            data.SubmitChanges();
        }


    }
}
