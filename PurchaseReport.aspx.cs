using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_PurchaseReport : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldet();
        }
    }
    protected void filldet()
    {
        string s = "select * from tbl_purchaseheader where user_id='" + Session["lgid"] + "'";
        obj.FillGridView(s,GridView1);
    }
}