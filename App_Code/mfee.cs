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
/// Summary description for mfee
/// </summary>
public partial class mfee
{
    public static mfee[] select()
    {
        using (var data = new instDataContext())
        {
            return data.mfees.ToArray();
        }
    }
    public static void insert(mfee k)
    {
        using (var data = new instDataContext())
        {
            data.mfees.InsertOnSubmit(k);
            data.SubmitChanges();
        }
 
    }
    public static void update(mfee k)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mfees.Single(j => j.instalmentno == k.instalmentno);
            obj.courseid = k.courseid;
            obj.paidto = k.paidto;
            obj.duedate = k.duedate;
            obj.amount = k.amount;
            obj.category = k.category;
            data.SubmitChanges();
        }
    }
    	
}
