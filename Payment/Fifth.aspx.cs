using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Default : System.Web.UI.Page
{
    Cls_APR obj = new Cls_APR();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            lblMurchant.Text = "CenterAdmin";
            lblDate.Text = DateTime.Now.ToShortDateString();
            lblAmoubnt.Text = Session["totalamount"].ToString();
            int total=Convert.ToInt32(lblAmoubnt.Text);
            int advance=total/2;
            lbladvance.Text = advance.ToString();
            lblTID.Text = "TID0003421ARD";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string strIsb = GetISB();

        string upQry = "insert into tbl_booking(package_id,booking_date,booking_todate,booking_nos,booking_meesage,booking_guide,booking_total,booking_advance,booking_transactionid,user_id)values('" + Session["packageID"] + "','" + DateTime.Now.ToShortDateString() + "','" + Session["date"] + "','" + Session["nos"] + "','" + Session["msg"] + "','" + Session["guide"] + "','" + lblAmoubnt.Text + "','" + lbladvance.Text + "','" + lblTID.Text + "','"+Session["lgid"]+"')";

        obj.ExecuteCommand(upQry);


        Response.Redirect("~/User/HomePage.aspx");


    }
    private string GetISB()
    {
        string allowedChars = "";

        // allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string passwordString = "";

        string temp = "";

        Random rand = new Random();
        for (int i = 0; i < 4; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordString += temp;
        }
        return ("M-" + passwordString);

    }
}