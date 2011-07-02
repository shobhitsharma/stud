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
/// Summary description for mevent
/// </summary>
public partial class mevent
{
    public static mevent[] select()
    {
        using (var data = new instDataContext())
        {
            return data.mevents.ToArray();
        }
    }
    public static void insert(mevent m)
    {
        using (var data = new instDataContext())
        {
            data.mevents.InsertOnSubmit(m);
            data.SubmitChanges();
        }
    }
    public static void update(mevent m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mevents.Single(j => j.eid == m.eid);
            obj.ename = m.ename;
            obj.edescription = m.edescription;
            obj.edate = m.edate;
            obj.eplace = m.eplace;
            obj.etime = m.etime;
            data.SubmitChanges();
        }
    }
}
