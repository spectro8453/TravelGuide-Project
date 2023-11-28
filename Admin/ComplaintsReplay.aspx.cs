using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ComplaintsReplay : System.Web.UI.Page
{
    static int id;
    Cls_APR cls = new Cls_APR();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            select();
            Panel1.Visible = false;
        }
    }
    public void select()
    {
        string sel = "select * from tbl_complaint c,tbl_newuser o,tbl_complainttype t where o.user_id=c.user_id and t.comptype_id=c.comptype_id  and c.complaint_status=0";
        cls.FillGridView(sel, grid);
        

    }
    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "re")
        {
            id = Convert.ToInt32(e.CommandArgument.ToString());
            Panel1.Visible = true;
            
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        string up = "update tbl_complaint set complaint_replay='" + txtreplay.Text + "',complaint_status=1 where complaint_id=" + id + "";
        cls.ExecuteCommand(up);
        Panel1.Visible = false;
        select();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}