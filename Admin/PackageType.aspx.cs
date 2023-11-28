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
            fillGrid();
        }
    }
    
    protected void fillGrid()
    {
        string selQry = "select * from tbl_packagetype";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        gridDetails.DataSource = dt;
        gridDetails.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            string upQry = "update tbl_packagetype set packagetype_name='" + txtpackagetype.Text + "' where packagetype_id='" + editID + "'";
            SqlCommand cmd = new SqlCommand(upQry, con);
            cmd.ExecuteNonQuery();
            flag = 0;
            fillGrid();
        }
        else
        {
            string insQry = "insert into tbl_packagetype(packagetype_name)values('" + txtpackagetype.Text + "')";
            SqlCommand cmd = new SqlCommand(insQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
    }
    protected void gridDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int delID = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_packagetype where packagetype_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            editID = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_packagetype where packagetype_id='" + editID + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            adp.Fill(dt);
            txtpackagetype.Text = dt.Rows[0]["packagetype_name"].ToString();
            flag = 1;
        }
    }
    protected void txtpackagetype_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}