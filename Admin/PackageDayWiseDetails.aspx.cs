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
            fillpackage();
            fillpackagetype();
            fillplace();
            fillGrid();
        }
    }
    protected void ddlPackage_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void fillpackage()
    {
        string selQry = "select * from tbl_package";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        ddlPackage.DataSource = dt;
        ddlPackage.DataTextField = "package_name";
        ddlPackage.DataValueField = "package_id";
        ddlPackage.DataBind();
    }
    protected void fillpackagetype()
    {
        string selQry = "select * from tbl_packagetype";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        ddlPackagetype.DataSource = dt;
        ddlPackagetype.DataTextField = "packagetype_name";
        ddlPackagetype.DataValueField = "packagetype_id";
        ddlPackagetype.DataBind();
    }
    protected void ddlPlace_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_location where place_id='" + ddlPlace.SelectedValue + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        cblocation.DataSource = dt;
        cblocation.DataTextField = "location_name";
        cblocation.DataValueField = "location_id";
        cblocation.DataBind();
    }
    protected void fillplace()
    {
        string selQry = "select * from tbl_place";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        ddlPlace.DataSource = dt;
        ddlPlace.DataTextField = "place_name";
        ddlPlace.DataValueField = "place_id";
        ddlPlace.DataBind();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_packdaywise s inner join tbl_package t on t.package_id=s.package_id inner join tbl_location p on p.location_id=s.location_id";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        {
            string insQry = "insert into tbl_packdaywise(package_id,location_id,packdaywise_dayno)values('" + ddlPackage.SelectedValue + "','" + cblocation.SelectedValue + "','" + txtdayno.Text + "')";
            SqlCommand cmd = new SqlCommand(insQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
        txtdayno.Text= "";
        fillGrid();

    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int delID = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_packdaywise where packdaywise_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
    }
    protected void cblocation_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}