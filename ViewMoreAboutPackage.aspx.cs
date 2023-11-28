using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class User_PackageBooking_Default : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillDayWise();
            fillPackStay();
        }
    }
    protected void fillDayWise()
    {
        string strDayWise = "select * from tbl_packdaywise pd inner join tbl_location l on l.location_id=pd.location_id inner join tbl_place p on p.place_id=l.place_id where package_id='" + Session["packageID"] + "'";
        obj.FillGridView(strDayWise, grdDayWise);
    }
    protected void fillPackStay()
    {
        string sel = "select * from tbl_staydetails s inner join tbl_staytype st on st.staytype_id=s.staytype_id inner join tbl_packagestay ps on ps.stay_id=s.stay_id inner join tbl_place p on p.place_id=s.place_id where ps.package_id='" + Session["packageID"] + "'";
        obj.FillGridView(sel, grdStayWise);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_package where package_id='" + Session["packageID"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            Session["amount"] = dt.Rows[0]["package_rate"].ToString();
        }
        Response.Redirect("BookNowPackage.aspx");
    }
}