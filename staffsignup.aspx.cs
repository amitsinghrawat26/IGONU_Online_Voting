using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class staffsignup : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into staffdet(staffid,name,dept,email,phone,username,password)values('" + txtstaffid.Text + "','" + txtname.Text + "','" + txtdept.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Staff details Added");
        txtdept.Text = "";
        txtemail.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
        txtstaffid.Text = "";
        txtusername.Text = "";

    }
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        txtusername.Text = txtname.Text.Substring(0, 2) + randomnumber(001, 999).ToString();
        txtpassword.Text = randomnumber(00011, 99998).ToString();
    }
    protected void txtstaffid_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select staffid from staffdet where staffid='" + txtstaffid.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblstaffid.Visible = true;
            Button1.Enabled = false;
        }
        else
        {
            lblstaffid.Visible = false;
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();

    }
}