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
        if (!Page.IsPostBack)
        {
            filldetails();
        }
    }
    protected void filldetails()
    {
        string s = "select * from tbl_bookpublish ps,tbl_bookregister g,tbl_purchasedetails p where ps.book_id=g.book_id and g.book_id=p.book_id and p.purch_id='" + Request.QueryString["idno"] + "'";
        obj.FillGridView(s, GridView1);
    }
}