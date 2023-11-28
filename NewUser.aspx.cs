using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class Guest_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SPECTRO;Initial Catalog=db_mainproject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        if (!IsPostBack)
        {
            fillDistrict();
        }
    }
    protected void fillDistrict()
    {
        string selQry = "select * from tbl_district";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        district.DataSource = dt;
        district.DataTextField = "district_name";
        district.DataValueField = "district_id";
        district.DataBind();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string insQry = "insert into tbl_newuser(user_gender,place_id,user_contact,user_email,user_password,user_pincode,user_name)values('" + gender.SelectedValue + "','" + place.SelectedValue + "','" +  contact.Text + "','" + email.Text +"','" + psswd.Text +"','" + pincode.Text +"','"+name.Text+"')";
        SqlCommand cmd = new SqlCommand(insQry, con);
        cmd.ExecuteNonQuery();
    }
    protected void district_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selQry = "select * from tbl_place where district_id='" + district.SelectedValue + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);
        adp.Fill(dt);
        place.DataSource = dt;
        place.DataTextField = "place_name";
        place.DataValueField = "place_id";
        place.DataBind();
    }
    protected void place_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void contact_TextChanged(object sender, EventArgs e)
    {

    }
    protected void email_TextChanged(object sender, EventArgs e)
    {

    }
    protected void psswd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void cnpsswd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void pincode_TextChanged(object sender, EventArgs e)
    {

    }
}