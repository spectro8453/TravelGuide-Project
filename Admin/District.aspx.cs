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

        fillGrid();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if  (flag ==1)
        {
            string upQry  = "update tbl_district set district_name='" + txtdistrict.Text + "' where district_id='" + editID + "'";
            SqlCommand cmd = new SqlCommand(upQry,con);
            cmd.ExecuteNonQuery();
            flag = 0;
        }
        else
        {

        string insQry = "insert into tbl_district(district_name)values('" + txtdistrict.Text + "')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
        }

        txtdistrict.Text ="";

        fillGrid();
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_district";
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
            string delQry = "delete from tbl_district where district_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }

        if (e.CommandName == "ed")
        {
            editID = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_district where district_id='" + editID + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            adp.Fill(dt);
            txtdistrict.Text = dt.Rows[0]["district_name"].ToString();
            flag = 1;
        }
    }
    protected void txtdistrict_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}