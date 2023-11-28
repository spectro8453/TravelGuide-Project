using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SPECTRO;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {

            packageType();
            fillGrid();
        }
    }
    protected void packageType()
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
    protected void fillGrid()
    {
        string selQry = "select * from tbl_package l inner join tbl_packagetype p on p.packagetype_id=l.packagetype_id";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_package l inner join tbl_packagetype p on p.packagetype_id=l.packagetype_id where l.packagetype_id='" + ddlPackagetype.SelectedValue + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            grdDetails.DataSource = dt;
            grdDetails.DataBind();
        }
        else
        {
            grdDetails.DataSource = dt;
            grdDetails.DataBind();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}