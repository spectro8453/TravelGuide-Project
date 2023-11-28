using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PackageBooking_Default : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string s = "select * from tbl_booking b inner join tbl_package p on p.package_id=b.package_id inner join tbl_newuser u on u.user_id=b.user_id  inner join tbl_guideregistration g on g.guide_id=b.guide_id where b.booking_guide='Yes' and  b.booking_status='1' and b.guide_id='" + Session["lgid"] + "'";
            obj.FillGridView(s, GridView3);
        }
    }
   
   
}