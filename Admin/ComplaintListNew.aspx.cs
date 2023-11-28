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
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        if(!IsPostBack)
        {
            Panel1.Visible = false;
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_complaint c inner join tbl_complainttype ct on ct.comptype_id=c.comptype_id inner join tbl_newuser nu on nu.user_id=c.user_id where c.complaint_status='0'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "reply")
        {
            id = Convert.ToInt32(e.CommandArgument.ToString());
            Panel1.Visible = true;

        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        string upQry = "update tbl_complaint set complaint_replay='" + txtreplay.Text + "',complaint_status=1 where complaint_id=" + id + "";
        SqlCommand cmd = new SqlCommand(upQry, con);
        cmd.ExecuteNonQuery();
        Panel1.Visible = false;
        fillGrid();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}