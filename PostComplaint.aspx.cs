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
            fillcomptype();
            fillGrid();
        }
    }
    protected void fillcomptype()
    {
        string selQry = "select * from tbl_complainttype";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        ddlcomptype.DataSource = dt;
        ddlcomptype.DataTextField = "comptype_name";
        ddlcomptype.DataValueField = "comptype_id";
        ddlcomptype.DataBind();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        {
            string insQry = "insert into tbl_complaint(comptype_id,complaint_details,user_id,complaint_date)values('" + ddlcomptype.SelectedValue + "','" + txtcomplaint.Text + "','" + Session["lgid"]+"','" +DateTime.Now.ToShortDateString()+"')";
            SqlCommand cmd = new SqlCommand(insQry, con);
            cmd.ExecuteNonQuery();
            fillGrid();
            txtcomplaint.Text = "";
        }
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_complaint p inner join tbl_complainttype d on p.comptype_id=d.comptype_id where user_id='" + Session["lgid"] + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();
    }
    protected void ddlcomptype_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdDetails_SelectedIndexChanged(object sender, EventArgs e)
    {



    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}