using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_OrderItem : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            FillOrder();
        }

    }
    private void FillOrder()
    {

        string str = "select * from tbl_bookpublish p,tbl_bookcategory c,tbl_bookregister r where p.book_id=r.book_id and r.bookcat_id=c.bookcat_id and p.book_id=" + Request.QueryString["ItemID"] + " ";
        DataTable dt = obj.GetDataTable(str);
        lblProduct.Text = dt.Rows[0]["book_name"].ToString();
        lblCat.Text = dt.Rows[0]["bookcat_name"].ToString();
        lblUnit.Text = dt.Rows[0]["book_pricecopy"].ToString();
        double tot = (Convert.ToDouble(dt.Rows[0]["book_pricecopy"]) * Convert.ToDouble(txtCat.Text));
        lblTot.Text = tot.ToString() + ".00";
        Image1.ImageUrl = "~/Author/BookImage/" + dt.Rows[0]["book_image"].ToString();
        lbldesc.Text = dt.Rows[0]["book_desc"].ToString();


    }
    protected void txtCat_TextChanged(object sender, EventArgs e)
    {
        double Price = Convert.ToDouble(txtCat.Text);
        double Value = Convert.ToDouble(lblUnit.Text);
        double SubTotal = (Price * Value);
        lblTot.Text = SubTotal.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        dt = (DataTable)Session["cart"];
        DataRow row = dt.NewRow();
        row["id"] = Convert.ToInt32(Session["cartid"]);
        row["filename"] = Image1.ImageUrl.ToString();
        row["album"] = lblProduct.Text.ToString();
        row["album_id"] = Convert.ToInt32(Request.QueryString["ItemID"]);
        row["qty"] = Convert.ToInt32(txtCat.Text);
        row["unitprice"] = Convert.ToDouble(lblUnit.Text);
        row["total"] = Convert.ToDouble(lblTot.Text);
        dt.Rows.Add(row);
        dt.AcceptChanges();
        Session["cart"] = dt;
        int i = Convert.ToInt32(Session["cartid"]);
        i++;
        Session["cartid"] = i;
        Response.Redirect("PhotoList.aspx");

    }
    private void GetTempGrid()
    {

        //DataTable dt = new DataTable();
        //dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
        //                    new DataColumn("product", typeof(string)),
        //                    new DataColumn("quantity",typeof(int)),new DataColumn("total",typeof(int)), });
        //dt.Rows.Add(1);
        //dt.Rows.Add(2);
        //dt.Rows.Add(3);
        //dt.Rows.Add(4);

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/CartPhoto.aspx");
    }
}