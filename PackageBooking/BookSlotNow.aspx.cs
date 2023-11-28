using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_Default : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    static int cardid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            obj.FillDrop(ddlslot, "slot_name", "slot_id", "tbl_slot","center_id='"+Session["centerid"]+"'");
            filldetails();

        }
    }
    protected void filldetails()
    {
        string s = "select * from tbl_service s inner join tbl_servicetype t on s.servicetype_id=t.servicetype_id inner join tbl_model m on m.model_id=s.model_id inner join tbl_brand b on b.brand_id=m.brand_id where s.service_id='" + Session["sid"] + "'";
        obj.FillDataList(s, DataList1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string insQry = "insert into tbl_booking(booking_date,booking_todate,service_id,center_id,user_id,slot_id)values('" + DateTime.Now.ToShortDateString() + "','" + txtdate.Text + "','" + Session["sid"] + "','" + Session["centerid"] + "','" + Session["lgid"] + "','" + ddlslot.SelectedValue + "')";
        obj.ExecuteCommand(insQry);

    }
}