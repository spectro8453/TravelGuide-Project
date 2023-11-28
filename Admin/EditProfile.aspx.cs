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
            fillProfile();
        }
    }
    protected void fillProfile()
    {
        string selQry = "select * from tbl_admin  where admin_id='" + Session["lgid"] + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);

        txtname.Text = dt.Rows[0]["admin_name"].ToString();
        txtcontact.Text = dt.Rows[0]["admin_contact"].ToString();
        txtemail.Text = dt.Rows[0]["admin_email"].ToString();


    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string upQry = "update tbl_admin set admin_name='" + txtname.Text + "',admin_contact='" + txtcontact.Text + "',admin_email='" + txtemail.Text + "' where admin_id='" + Session["lgid"] + "'";
        SqlCommand cmd = new SqlCommand(upQry, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("MyProfile.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}