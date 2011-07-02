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
/// Summary description for mdatesheet
/// </summary>
public partial class mdatesheet
{
    public static mdatesheet[] select()
    {
        using (var data = new instDataContext())
        {
            return data.mdatesheets.ToArray();
        }
    }
    public static void insert(mdatesheet t)
    {
        using (var data = new instDataContext())
        {
            data.mdatesheets.InsertOnSubmit(t);
            data.SubmitChanges();
        }

    }
    public static void update(mdatesheet t)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mdatesheets.Single(j => j.course == t.course);
            obj.sem = t.sem;
            obj.sub = t.sub;
            obj.subcode = t.subcode;
            obj.date = t.date;
            obj.examination = t.examination;
            obj.shift = t.shift;
            obj.timing = t.timing;
        }
    }
	
}
