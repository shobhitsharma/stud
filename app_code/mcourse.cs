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
/// Summary description for mcourses
/// </summary>
public partial class mcourse
{
    public static mcourse[] select()
    {
        using (var data = new instDataContext())
        {
            return data.mcourses.ToArray();
        }
    }
    public static void insert(mcourse s)
    {
        using (var data = new instDataContext())
        {
            data.mcourses.InsertOnSubmit(s);
            data.SubmitChanges();
        }
    }



    public static void update(mcourse s)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mcourses.Single(j => j.course_id == s.course_id);
            obj.course_name=s.course_name;
            obj.course_duration = s.course_duration;
            obj.eligibility = s.eligibility;

        }
    }
    public static void delete(mcourse s)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mcourses.Single(j => j.course_id == s.course_id);
            data.mcourses.DeleteOnSubmit(obj);
            data.SubmitChanges();
        }
    }

}