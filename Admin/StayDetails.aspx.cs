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
            fillstaytype();
            fillGrid();
            filldistrict();
        }
    }
     protected void fillstaytype()
     {

        string selQry = "select * from tbl_staytype";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        ddlStaytype.DataSource = dt;
        ddlStaytype.DataSource = dt;
        ddlStaytype.DataTextField = "staytype_name";
        ddlStaytype.DataValueField = "staytype_id";
        ddlStaytype.DataBind();
    }
    protected void ddlStaytype_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void filldistrict()
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
    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_place where district_id='" + ddlDistrict.SelectedValue + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        ddlplace.DataSource = dt;
        ddlplace.DataTextField = "place_name";
        ddlplace.DataValueField = "place_id";
        ddlplace.DataBind();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_staydetails s inner join tbl_staytype t on t.staytype_id=s.staytype_id inner join tbl_place p on p.place_id=s.place_id inner join tbl_district d on d.district_id=p.district_id" ;
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_staydetails set staytype_id='" + ddlStaytype.SelectedValue + "',place_id='" + ddlplace.SelectedValue + "',stay_name='" + txtName.Text + "',stay_contact='" + txtContact.Text + "',stay_email='" + txtgmail.Text + "',stay_address='" + txtaddress.Text + "',stay_about='" + txtabout.Text + "' where stay_id='" + editID + "'";
            SqlCommand cmd = new SqlCommand(upQry, con);
            cmd.ExecuteNonQuery();
            flag = 0;
            fillGrid();
        }

        else
        {
            string insQry = "insert into tbl_staydetails(staytype_id,place_id,stay_name,stay_contact,stay_email,stay_address,stay_about)values('" + ddlStaytype.SelectedValue + "','" + ddlplace.SelectedValue + "','" + txtName.Text + "','" + txtContact.Text + "','" + txtgmail.Text + "','" + txtaddress.Text + "','" + txtabout.Text + "')";
            SqlCommand cmd = new SqlCommand(insQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
        txtabout.Text = "";
        txtaddress.Text = "";
        txtContact.Text = "";
        txtgmail.Text = "";
        txtName.Text = "";
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int delID = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_staydetails where stay_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            editID = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_staydetails where stay_id='" + editID + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            adp.Fill(dt);
            ddlStaytype.SelectedValue = dt.Rows[0]["staytype_id"].ToString();
            ddlplace.SelectedValue = dt.Rows[0]["place_id"].ToString();
            txtName.Text = dt.Rows[0]["stay_name"].ToString();
            txtContact.Text = dt.Rows[0]["stay_contact"].ToString();
            txtgmail.Text = dt.Rows[0]["stay_email"].ToString();
            txtaddress.Text = dt.Rows[0]["stay_address"].ToString();
            txtabout.Text = dt.Rows[0]["stay_about"].ToString();
            flag = 1;
        }
    }
    protected void ddlplace_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}