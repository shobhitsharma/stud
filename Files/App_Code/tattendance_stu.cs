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
/// Summary description for tattendance_stu
/// </summary>
public partial class tattendance_stu
{
    public static tattendance_stu[] select()
    {
        using (var data=new instDataContext())
        {
            return data.tattendance_stus.ToArray();
            
        }
    }
    public static void insert(tattendance_stu t)
    {
        using (var data = new instDataContext())
        {
            data.tattendance_stus.InsertOnSubmit(t);
            data.SubmitChanges();

        }
    }
    public static void update(tattendance_stu t)
    {
        using (var data = new instDataContext())
        {
            var obj = data.tattendance_stus.Single(j => j.enrolmentno == t.enrolmentno);
            obj.name = t.name;
            obj.att_date = t.att_date;
            obj.status = t.status;

        }
    }
}
