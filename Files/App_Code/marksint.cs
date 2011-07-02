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
/// Summary description for marksint
/// </summary>
public  partial class marksint
{
    public static marksint[] select()
    {
        using (var data=new instDataContext())
        {
            return data.marksints.ToArray();   
        }
    }
    public static void insert(marksint m)
    {
        using (var data = new instDataContext())
        {
            data.marksints.InsertOnSubmit(m);
            data.SubmitChanges();
        } 
    }
    public static void update(marksint m)
    {
        using (var data = new instDataContext())
        {
            var obj = data.marksints.Single(j => j.srno == m.srno);
            obj.subject = m.subject;
            obj.total = m.total;
            obj.sessional2 = m.sessional2;
            obj.sessional1 = m.sessional1;
            obj.rollno = m.rollno;
            obj.assignments = m.assignments;
            obj.attendance = m.attendance;
            data.SubmitChanges();
        }
    }
}
