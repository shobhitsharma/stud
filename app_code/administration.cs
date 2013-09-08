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
/// Summary description for administration
/// </summary>
public  partial class administration
{
    public static administration[] select()
    {
        using (var data=new instDataContext())
        {
            return data.administrations.ToArray();
        }
    }
    public static void insert(administration a)
    {
        using (var data = new instDataContext())
        {
            data.administrations.InsertOnSubmit(a);
            data.SubmitChanges();
        }
 
    }
    public static void update(administration a)
    {
        using (var data = new instDataContext())
        {
            var obj = data.administrations.Single(j => j.name == a.name);
            obj.designation = a.designation;
            obj.number = a.number;
            obj.email = a.email;
            data.SubmitChanges();
        }
    }
	
}
