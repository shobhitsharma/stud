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
/// Summary description for transport
/// </summary>
public  partial class transport
{
    public static transport[] select()
    {
        using (var data=new instDataContext())
        {
            return data.transports.ToArray();
        }
    }
    public static void insert(transport t)
    {
        using (var data = new instDataContext())
        {
            data.transports.InsertOnSubmit(t);
            data.SubmitChanges();
        }
 
    }
    public static void update(transport t)
    {
        using (var data = new instDataContext())
        {
            var obj = data.transports.Single(j => j.busno == t.busno);
            obj._city = t._city;
            obj._route = t._route;
            obj._startpt = t._startpt;
            data.SubmitChanges();
        }
    }
    public static void delete(transport t)
    {
        using (var data = new instDataContext())
        {
            var obj = data.transports.Single(j => j.busno==t.busno);
            data.transports.DeleteOnSubmit(obj);
            data.SubmitChanges();
        }
 
    }
}
