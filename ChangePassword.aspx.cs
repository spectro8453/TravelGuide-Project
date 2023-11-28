using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guide_Default : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection("Data Source=SPECTRO;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();


    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_guideregistration where guide_id='" + Session["lgid"] + "' and guide_password='" + txtCurrent.Text + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (txtConfirm.Text == txtNew.Text)
            {
                string upQry = "update tbl_guideregistration set guide_password='" + txtNew.Text + "' where guide_id='" + Session["lgid"] + "'";
                SqlCommand cmd = new SqlCommand(upQry, con);
                cmd.ExecuteNonQuery();
                lblmsg.Text = "Password Changed..";
            }
            else
            {
                lblmsg.Text = "Password Not Same...";
            }
        }
        else
        {
            lblmsg.Text = "Password Incorrect...";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}