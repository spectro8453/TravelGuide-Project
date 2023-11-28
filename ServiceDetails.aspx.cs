
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_PhotoList : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    static int cardid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
          
            filldetails();
           
        }
    }
    protected void filldetails()
    {
        string s = "select * from tbl_service s inner join tbl_servicetype t on s.servicetype_id=t.servicetype_id inner join tbl_model m on m.model_id=s.model_id inner join tbl_brand b on b.brand_id=m.brand_id where s.center_id='" + Session["centerid"] + "'";
        obj.FillDataList(s,DataList1);
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        if (e.CommandName == "cart")
        {
            cardid = Convert.ToInt32(e.CommandArgument.ToString());
            Session["sid"] = cardid.ToString();
            Response.Redirect("BookSlotNow.aspx");
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
        //HiddenField h = (HiddenField)e.Item.FindControl("HiddenField1");
        //Rating re = (Rating)e.Item.FindControl("Rating1");
        //string sel = "select AVG(rate_value) as rating from tbl_rating where book_id=" + h.Value + "";
        //DataTable dt = new DataTable();
        //dt = obj.GetDataTable(sel);
        //if (dt != null)
        //{
        //    if (dt.Rows.Count > 0)
        //    {
        //        if (dt.Rows[0]["rating"] != DBNull.Value)
        //        {
        //            re.CurrentRating = Convert.ToInt32(dt.Rows[0]["rating"]);
        //        }
        //    }
        //}
    }
    //protected void Rating1_Changed(object sender, RatingEventArgs e)
    //{
    //    string s = "select user_id from tbl_rating where user_id=" + Session["lgid"] + "";
    //    DataTable dt = obj.GetDataTable(s);
    //    if (dt.Rows.Count > 0)
    //    {
    //    }
    //    else
    //    {

    //        string str = "insert into tbl_rating(book_id,rate_value,user_id)values(" + e.Tag + "," + e.Value + "," + Session["lgid"] + ")";
    //        obj.ExecuteCommand(str);

    //        filldetails();
    //    }



    //}
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
   
   
    
   

    
}