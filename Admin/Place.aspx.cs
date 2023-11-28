using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SPECTRO;Initial Catalog=db_mainproject;Integrated Security=True");

    static int flag, editID;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        if (!IsPostBack)
        {
            fillDistrict();
            fillGrid();
        }
    }
    protected void fillDistrict()
    {
        string selQry = "select * from tbl_district";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        ddlDistrict.DataSource = dt;
        ddlDistrict.DataTextField = "district_name";
        ddlDistrict.DataValueField = "district_id";
        ddlDistrict.DataBind();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_place set place_name='" + txtplace.Text + "',place_pincode='" + txtpincode.Text + "',district_id='"+ddlDistrict.SelectedValue+"' where place_id='" + editID + "'";
            SqlCommand cmd = new SqlCommand(upQry, con);
            cmd.ExecuteNonQuery();
            flag = 0;
        }

        else
        {
            string insQry = "insert into tbl_place(place_name,place_pincode,district_id)values('" + txtplace.Text + "','" + txtpincode.Text + "','" + ddlDistrict.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(insQry, con);
            cmd.ExecuteNonQuery();
        }

        txtplace.Text = "";
            fillGrid();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_place p inner join tbl_district d on p.district_id=d.district_id";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int delID = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_place where place_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            editID = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_place where place_id='" + editID + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            adp.Fill(dt);
            ddlDistrict.SelectedValue = dt.Rows[0]["district_id"].ToString();
            txtplace.Text = dt.Rows[0]["place_name"].ToString();
            txtpincode.Text = dt.Rows[0]["place_pincode"].ToString();
            flag = 1;
        }
    }
    protected void grdDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtplace_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtpincode_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}