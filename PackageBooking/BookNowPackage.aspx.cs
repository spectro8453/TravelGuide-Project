using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PackageBooking_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["date"] = txtdate.Text;
        Session["nos"] = txtnos.Text;
        Session["msg"] = txtmessage.Text;
        Session["guide"] = ddlguide.Text;

        int rate = Convert.ToInt32(Session["amount"].ToString());
        int nos = Convert.ToInt32(Session["nos"].ToString());
        int total = rate * nos;
        Session["totalamount"] = total.ToString();

        Response.Redirect("../Payment/First.aspx");
    }
}