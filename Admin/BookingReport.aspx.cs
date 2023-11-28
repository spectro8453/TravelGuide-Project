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

            obj.FillDrop(DropDownList1, "guide_name", "guide_id", "tbl_guideregistration");
            //string s = "select * from tbl_booking b inner join tbl_package p on p.package_id=b.package_id inner join tbl_newuser u on u.user_id=b.user_id";
            //obj.FillGridView(s, GridView1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        string s = "select * from tbl_booking b inner join tbl_package p on p.package_id=b.package_id inner join tbl_newuser u on u.user_id=b.user_id where b.booking_guide='No' and b.booking_status='0'";
        obj.FillGridView(s, GridView1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        string s = "select * from tbl_booking b inner join tbl_package p on p.package_id=b.package_id inner join tbl_newuser u on u.user_id=b.user_id where b.booking_guide='Yes' and  b.booking_status='0'";
        obj.FillGridView(s, GridView2);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        string s = "select * from tbl_booking b inner join tbl_package p on p.package_id=b.package_id inner join tbl_newuser u on u.user_id=b.user_id  inner join tbl_guideregistration g on g.guide_id=b.guide_id where b.booking_guide='Yes' and  b.booking_status='1'";
        obj.FillGridView(s, GridView3);
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "assign")
        {
            Session["bookid"] = e.CommandArgument.ToString();
            MultiView1.ActiveViewIndex = 3;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string u = "update tbl_booking set guide_id='" + DropDownList1.SelectedValue + "',booking_guidemessage='" + TextBox1.Text + "',booking_status='1' where booking_id='" + Session["bookid"] + "'";
        obj.ExecuteCommand(u);
        MultiView1.ActiveViewIndex = 2;
        string s = "select * from tbl_booking b inner join tbl_package p on p.package_id=b.package_id inner join tbl_newuser u on u.user_id=b.user_id  inner join tbl_guideregistration g on g.guide_id=b.guide_id where b.booking_guide='Yes' and  b.booking_status='1'";
        obj.FillGridView(s, GridView3);
    }
}