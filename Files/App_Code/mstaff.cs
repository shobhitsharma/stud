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
/// Summary description for mstaff
/// </summary>
public partial class mstaff
{
    public static mstaff[] select()
    {
        using (var data = new instDataContext())
        {
            return data.mstaffs.ToArray();
        }
    }
    public static void insert(mstaff f)
    {
        using (var data = new instDataContext())
        {
            data.mstaffs.InsertOnSubmit(f);
            data.SubmitChanges();
        }
    }
    public static void update(mstaff f)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mstaffs.Single(j => j.staffid == f.staffid);
            obj.designationname = f.designationname;
            obj.firstname = f.firstname;
            obj.lastname = f.lastname;
            obj.address1 = f.address1;
            obj.address2 = f.address2;
            obj.address3 = f.address3;
            obj.city = f.city;
            obj.pin = f.pin;
            obj.state = f.state;
            obj.dob = f.dob;
            obj.doj = f.doj;
            obj.dol = f.dol;
            obj.qualification = f.qualification;
            obj.experience = f.experience;
            obj.phone = f.phone;
            obj.gender = f.gender;
            obj.email = f.email;
        }
    }
    public static void delete(mstaff f)
    {
        using (var data = new instDataContext())
        {
            var obj = data.mstaffs.Single(j => j.staffid == f.staffid);
            data.mstaffs.DeleteOnSubmit(obj);
            data.SubmitChanges();
        }


    }

}














































