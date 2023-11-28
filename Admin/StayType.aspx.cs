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
    protected void fillGrid()
    {
        string selQry = "select * from tbl_staytype";
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
            string upQry = "update tbl_staytype set staytype_name='" + txtStaytype.Text + "' where staytype_id='" + editID + "'";
            SqlCommand cmd = new SqlCommand(upQry, con);
            cmd.ExecuteNonQuery();
            flag = 0;
        }
        else
        {

            string insQry = "insert into tbl_staytype(staytype_name)values('" + txtStaytype.Text + "')";
            SqlCommand cmd = new SqlCommand(insQry, con);
            cmd.ExecuteNonQuery();
        }

        txtStaytype.Text = "";

        fillGrid();
    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int delID = Convert.ToInt32(e.CommandArgument.ToString());
            string delQry = "delete from tbl_staytype where staytype_id='" + delID + "'";
            SqlCommand cmd = new SqlCommand(delQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
        }
        if (e.CommandName == "ed")
        {
            editID = Convert.ToInt32(e.CommandArgument.ToString());
            string selQry = "select * from tbl_staytype where staytype_id='" + editID + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
            adp.Fill(dt);
            txtStaytype.Text = dt.Rows[0]["staytype_name"].ToString();
            flag = 1;
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}