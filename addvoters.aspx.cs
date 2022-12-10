using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class addvoters : System.Web.UI.Page
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
        query = "insert into voterdet(regno,name,dept,course,attenper,yr,noarrear,uname,pwd)values('" + txtregno.Text + "','" + txtname.Text + "','" + txtdept.Text + "','" + txtcourse.Text + "','" + txtattendence.Text + "','" + dropyear.SelectedItem + "','" + txtnoarrears.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Voters Added");
        txtattendence.Text = "";
        txtcourse.Text = "";
        txtdept.Text = "";
        txtname.Text = "";
        txtnoarrears.Text = "";
        txtregno.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
    }
    private int randomnumbers(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        txtusername.Text = txtname.Text.Substring(0, 3) + (randomnumbers(112, 999)).ToString();
        txtpassword.Text = randomnumbers(00000, 99999).ToString();
    }
    protected void txtregno_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select regno from voterdet where regno='" + txtregno.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            Button1.Enabled = false;
            MessageBox.Show("Reg No Already Added");
            
        }
        else
        {
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
}