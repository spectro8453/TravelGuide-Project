using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class Guest_NewLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SPECTRO;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string selQuery = "select * from tbl_admin where admin_passwd='" + txtpasswd.Text + "' and admin_email ='" + txtemail.Text + "'";
        SqlDataAdapter adp1 = new SqlDataAdapter(selQuery, con);
        DataTable dt = new DataTable();
        adp1.Fill(dt);

        string selUser = "select * from tbl_newuser where user_password='" + txtpasswd.Text + "' and user_email ='" + txtemail.Text + "'";
        SqlDataAdapter adpUser = new SqlDataAdapter(selUser, con);
        DataTable dtUser = new DataTable();
        adpUser.Fill(dtUser);

        string selGuide = "select * from tbl_guideregistration where guide_password='" + txtpasswd.Text + "' and guide_email ='" + txtemail.Text + "'";
        SqlDataAdapter adpGuide = new SqlDataAdapter(selGuide, con);
        DataTable dtGuide = new DataTable();
        adpGuide.Fill(dtGuide);



        if (dt.Rows.Count > 0)
        {
            Session["lgid"] = dt.Rows[0]["admin_id"].ToString();
            Session["lgname"] = dt.Rows[0]["admin_name"].ToString();
            Response.Redirect("../Admin/HomePage.aspx");
        }
        else if (dtUser.Rows.Count > 0)
        {
            Session["lgid"] = dtUser.Rows[0]["user_id"].ToString();
            Session["lgname"] = dtUser.Rows[0]["user_name"].ToString();
            Response.Redirect("../User/HomePage.aspx");
        }
        else if (dtGuide.Rows.Count > 0)
        {
            Session["lgid"] = dtGuide.Rows[0]["guide_id"].ToString();
            Session["lgname"] = dtGuide.Rows[0]["guide_name"].ToString();
            Response.Redirect("../Guide/HomePage.aspx");
        }
        else
        {
            LinkButton1.Text = "Invalid Login!!!!";
        }



    }
    protected void txtpasswd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewUser.aspx");
    }
}