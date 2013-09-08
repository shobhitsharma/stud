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
/// Summary description for tattendancestaff
/// </summary>
public partial class tattendancestaff
{
    public static tattendancestaff[] select()
    {
        using (var data=new instDataContext())
        {
            return data.tattendancestaffs.ToArray();
            
        }
    }
    public static void insert(tattendancestaff t)
    {
        using (var data = new instDataContext())
        {
            data.tattendancestaffs.InsertOnSubmit(t);
            data.SubmitChanges();

        }
    }
    public static void update(tattendancestaff t)
    {
        using (var data = new instDataContext())
        {
           var obj=data.tattendancestaffs.Single(j=>j.staffid==t.staffid);
               obj.att_date=t.att_date;
               obj.name= t.name;
               obj.status = t.status;
               data.SubmitChanges();
        }
    }
    
}
