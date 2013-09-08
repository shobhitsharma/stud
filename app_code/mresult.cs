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
/// Summary description for mresult
/// </summary>
public partial class mresult
{
    public static mresult[] select()
    {
        using (var data = new instDataContext())
        {
            return data.mresults.ToArray();
        }

    }
    public static void insert(mresult r)
    {
        using (var data = new instDataContext())
        {
            data.mresults.InsertOnSubmit(r);
            data.SubmitChanges();
        }

    }
    public static void update(mresult r)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mresults.Single(j => j.srno == r.srno);
            obj.batchid = r.batchid;
            obj.enrolmentno = r.enrolmentno;
            obj.subid = r.subid;
            obj.markstheory = r.markstheory;
            obj.markspractical = r.markspractical;
            obj.res_date = r.res_date;
            data.SubmitChanges();
        }

    }
    public static void delete(mresult r)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mresults.Single(j => j.srno == j.srno);
            data.mresults.DeleteOnSubmit(obj);
            data.SubmitChanges();
        }
    }
}
