using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
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
        string selQry = "select * from tbl_newuser  where user_id='" + Session["lgid"] + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);

        txtname.Text = dt.Rows[0]["user_name"].ToString();
        txtcontact.Text = dt.Rows[0]["user_contact"].ToString();
        txtemail.Text = dt.Rows[0]["user_email"].ToString();
        txtpincode.Text = dt.Rows[0]["user_pincode"].ToString();
        
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string upQry = "update tbl_newuser set user_name='" + txtname.Text + "',user_contact='" + txtcontact.Text + "',user_email='" + txtemail.Text + "',user_pincode='" + txtpincode.Text + "' where user_id='" + Session["lgid"] + "'";
        SqlCommand cmd = new SqlCommand(upQry, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("MyProfile.aspx");
    }
    protected void contact_TextChanged(object sender, EventArgs e)
    {
         
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}