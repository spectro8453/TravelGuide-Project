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

        if(!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void fillGrid()
    {
        string selQry = "select * from tbl_complaint c inner join tbl_complainttype ct on ct.comptype_id=c.comptype_id inner join tbl_newuser nu on nu.user_id=c.user_id where c.complaint_status='1'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}