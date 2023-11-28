using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_Default : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillBooking();
        }
    }
    protected void fillBooking()
    {
        string s = "select * from tbl_booking b inner join tbl_service s on b.service_id=s.service_id inner join tbl_model m on m.model_id=s.model_id inner join tbl_servicetype st on st.servicetype_id=s.servicetype_id inner join tbl_servicecenter sc on sc.center_id=s.center_id inner join tbl_slot sl on sl.slot_id=b.slot_id where b.booking_status='0' and b.user_id='" + Session["lgid"] + "'";
        obj.FillDataList(s, DataList1);
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int delID = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_booking where booking_id='" + delID + "'";
            obj.ExecuteCommand(delQry);

            fillBooking();

        }

    }
}