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
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_admin where admin_id='" + Session["lgid"] + "' and admin_passwd='" + txtCurrent.Text + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (txtConfirm.Text == txtNew.Text)
            {
                string upQry = "update tbl_admin set admin_passwd='" + txtNew.Text + "' where admin_id='" + Session["lgid"] + "'";
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