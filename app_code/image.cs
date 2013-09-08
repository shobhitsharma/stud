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
/// Summary description for image
/// </summary>
public  partial class image
{
    public static image[] select()
    {
        using (var data = new instDataContext())
        {
            return data.images.ToArray();
        }

    }
    public static void insert(image r)
    {
        using (var data = new instDataContext())
        {
            data.images.InsertOnSubmit(r);
            data.SubmitChanges();
        }

    }
    public static void update(image r)
    {
        using (var data = new instDataContext())
        {
            var obj = data.images.Single(j => j.srno == r.srno);
            obj.picpath = r.picpath;
            obj.comments = r.comments;
            data.SubmitChanges();
        }

    }
    public static void delete(image r)
    {
        using (var data = new instDataContext())
        {
            var obj = data.images.Single(j => j.srno == j.srno);
            data.images.DeleteOnSubmit(obj);
            data.SubmitChanges();
        }
    }
}
