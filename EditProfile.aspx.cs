using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class Guide_Default : System.Web.UI.Page
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
        string selQry = "select * from tbl_guideregistration  where guide_id='" + Session["lgid"] + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);

        name.Text = dt.Rows[0]["guide_name"].ToString();
        contact.Text = dt.Rows[0]["guide_contact"].ToString();
        email.Text = dt.Rows[0]["guide_email"].ToString();
        pincode.Text = dt.Rows[0]["guide_pincode"].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string upQry = "update tbl_guideregistration set guide_name='" + name.Text + "',guide_contact='" + contact.Text + "',guide_email='" + email.Text + "',guide_pincode='" + pincode.Text + "' where guide_id='" + Session["lgid"] + "'";
        SqlCommand cmd = new SqlCommand(upQry, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("My Profile.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}