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
/// Summary description for bill
/// </summary>
public partial class bill
{
    public static bill[] select()
    {
        using (var data = new instDataContext())
        {
            return data.bills.ToArray();
        }
    }
    public static void insert(bill m)
    {
        using (var data = new instDataContext())
        {
            data.bills.InsertOnSubmit(m);
            data.SubmitChanges();
        }
    }
    public static void update(bill m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.bills.Single(j => j.bid == m.bid);
            obj.bdate = m.bdate;
            obj.bammount = m.bammount;
            obj.bname = m.bname;
            data.SubmitChanges();
        }


    }
}