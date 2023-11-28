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
    protected void Page_Load(object sender, EventArgs e)
    {
        
            con.Open();

            if (!IsPostBack)
            {

                fillDistrict();
                fillGrid();
            }
           
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string insQry = "insert into tbl_location(location_name,place_id)values('" + txtllocation.Text.Replace("'","''") + "','" + ddlplace.SelectedValue + "')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        fillGrid();
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
        string selQry = "select * from tbl_location l inner join tbl_place p on p.place_id=l.place_id inner join tbl_district d on d.district_id=p.district_id";
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
            string delQry = "delete from tbl_location where location_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
    }
    protected void ddlplace_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtllocation_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}