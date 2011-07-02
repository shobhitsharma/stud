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
/// Summary description for charge
/// </summary>
public  partial class charge
{
    public static charge[] select()
    {
        using (var data = new instDataContext())
        {
            return data.charges.ToArray();
        }
    }
    public static void insert(charge m)
    {
        using (var data = new instDataContext())
        {
            data.charges.InsertOnSubmit(m);
            data.SubmitChanges();
        }
    }
    public static void update(charge m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.charges.Single(j => j.srno == m.srno);
            obj.date = m.date;
            obj.charges = m.charges;
            obj.purpose = m.purpose;
            data.SubmitChanges();
        }
    }
}
