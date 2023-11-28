using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Data;
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
            obj.FillDrop(DropDownList1, "lang_id", "lang_name", "tbl_language");
            filldetails();
            Panel1.Visible = false;
        }
    }
    protected void filldetails()
    {
        string s = "select * from tbl_language l,tbl_bookpublish pp,tbl_bookregister br,tbl_author a,tbl_bookcategory c,tbl_publisher p where pp.publisher_id=p.publisher_id and pp.book_id=br.book_id and br.author_id=a.author_id and br.lang_id=l.lang_id and br.bookcat_id=c.bookcat_id";
        obj.FillDataList(s, DataList1);
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "cart")
        {
            cardid = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("OrderItem.aspx?ItemID=" + e.CommandArgument + "");
        }
        if (e.CommandName == "com")
        {
            cardid = Convert.ToInt32(e.CommandArgument.ToString());
            Panel1.Visible = true;
            txtcomm.Focus();
            fillcomm();
        }
        //    if(e.CommandName=="view")
        //        {
        //            Image1.ImageUrl = "~/Admin/water/" + e.CommandArgument.ToString();
        //          HiddenField2_ModalPopupExtender.Show();
        //}
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        HiddenField h = (HiddenField)e.Item.FindControl("HiddenField1");
        Rating re = (Rating)e.Item.FindControl("Rating1");
        string sel = "select AVG(rate_value) as rating from tbl_rating where book_id=" + h.Value + "";
        DataTable dt = new DataTable();
        dt = obj.GetDataTable(sel);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["rating"] != DBNull.Value)
                {
                    re.CurrentRating = Convert.ToInt32(dt.Rows[0]["rating"]);
                }
            }
        }
    }
    protected void Rating1_Changed(object sender, RatingEventArgs e)
    {
        string s = "select user_id from tbl_rating where user_id=" + Session["lgid"] + "";
        DataTable dt = obj.GetDataTable(s);
        if (dt.Rows.Count > 0)
        {
        }
        else
        {

            string str = "insert into tbl_rating(book_id,rate_value,user_id)values(" + e.Tag + "," + e.Value + "," + Session["user_id"] + ")";
            obj.ExecuteCommand(str);

            filldetails();
        }



    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void btnpost_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_comment(book_id,user_id,comment_description,comment_date)values(" + cardid + ",'" + Session["lgid"] + "','" + txtcomm.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        obj.ExecuteCommands(ins);
        fillcomm();
    }
    protected void fillcomm()
    {
        string s = "select * from tbl_comment c,tbl_user u where c.user_id=u.user_id";
        DataTable dt = obj.GetDataTable(s);
        if (dt.Rows.Count > 0)
        {
            obj.FillGridView(s, GridView1);
            GridView1.Visible = true;
        }
        else
        {
            GridView1.Visible = false;
        }
    }
    protected void btncan_Click(object sender, EventArgs e)
    {
        txtcomm.Text = "";
        Panel1.Visible = false;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        fillcomm();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = "select * from tbl_bookpublish pp,tbl_bookregister br,tbl_author a,tbl_bookcategory c,tbl_publisher p where pp.publisher_id=p.publisher_id and pp.book_id=br.book_id and br.author_id=a.author_id and br.lang_id=l.lang_id and br.bookcat_id=c.bookcat_id and  br.lang_id='" + DropDownList1.SelectedValue + "'";
        obj.FillDataList(s, DataList1);
    }
}