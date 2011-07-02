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
/// Summary description for tsalarypaid
/// </summary>
public partial class tsalarypaid
{
    public static tsalarypaid[] select()
    {
        using (var data=new instDataContext())
        {
            return data.tsalarypaids.ToArray();
        }
    }
    public static void insert(tsalarypaid t)
    {
        using (var data = new instDataContext())
        {
            data.tsalarypaids.InsertOnSubmit(t);
            data.SubmitChanges();
        }
 
    }
    public static void update(tsalarypaid t)
    {
        using (var data = new instDataContext())
        {
            var obj = data.tsalarypaids.Single(j => j.staffid == t.staffid);
            obj.paydate = t.paydate;
            obj.pmtmode = t.pmtmode;
            obj.designationname = t.designationname;
            obj.dated = t.dated;
            obj.chequeno = t.chequeno;
            obj.bankname = t.bankname;
            obj.amount = t.amount;
        }
    }
	
}
