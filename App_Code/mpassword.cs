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
/// Summary description for mpasswords
/// </summary>
public partial class mpassword
{
    public static mpassword[] select()
    {
        using (var data = new instDataContext())
        {
            return data.mpasswords.ToArray();
        }
    }
    public static void insert(mpassword p)
    {
        using (var data = new instDataContext())
        {
            data.mpasswords.InsertOnSubmit(p);
            data.SubmitChanges();
        }
    }
    public static void update(mpassword p)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mpasswords.Single(j => j.usertype == p.usertype);
            obj.username = p.username;
            obj.password = p.password;
            data.SubmitChanges();
        
        }
    }
    public static void delete(mpassword p)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mpasswords.Single(j => j.usertype == p.usertype);
            data.mpasswords.DeleteOnSubmit(obj);
            data.SubmitChanges();
        }
    }



}
