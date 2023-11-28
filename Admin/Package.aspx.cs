using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SPECTRO;Initial Catalog=db_mainproject;Integrated Security=True");

    static int flag, editID;
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
        ddlpackagetype.DataSource = dt;
        ddlpackagetype.DataTextField = "packagetype_name";
        ddlpackagetype.DataValueField = "packagetype_id";
        ddlpackagetype.DataBind();
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

    protected void butsubmit_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_package set package_name='" + txtpackage.Text + "',packagetype_id='" + ddlpackagetype.SelectedValue + "',package_rate='" + txtrate.Text + "',package_noofdays='" + txtnoofdays.Text + "',package_details='" + txtDetails.Text + "' where package_id='" + editID + "'";
            SqlCommand cmd = new SqlCommand(upQry, con);
            cmd.ExecuteNonQuery();
            flag = 0;
            fillGrid();
        }

        else
    
        {

            string imageName = Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());
            FileUpload1.SaveAs(Server.MapPath("../Assests/PackageImage/" + imageName));

            string insQry = "insert into tbl_package(packagetype_id,package_name,package_rate,package_noofdays,package_details,package_image)values('" + ddlpackagetype.SelectedValue + "','" + txtpackage.Text + "','" + txtrate.Text + "','" + txtnoofdays.Text + "','" + txtDetails.Text + "','"+imageName+"')";
            SqlCommand cmd = new SqlCommand(insQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int delID = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_package where package_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            editID = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_package where package_id='" + editID + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            adp.Fill(dt);
            ddlpackagetype.SelectedValue = dt.Rows[0]["packagetype_id"].ToString();
            txtpackage.Text = dt.Rows[0]["package_name"].ToString();
            txtrate.Text = dt.Rows[0]["package_rate"].ToString();
            txtnoofdays.Text = dt.Rows[0]["package_noofdays"].ToString();
            txtDetails.Text = dt.Rows[0]["package_details"].ToString();
            flag = 1;
        }
    }
    protected void txtpackage_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlpackagetype_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
    protected void grdDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}