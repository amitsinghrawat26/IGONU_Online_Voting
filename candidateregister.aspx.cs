using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class candidateregister : System.Web.UI.Page
{ SqlConnection con;
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
        query = "insert into candidatedet(name,rollno,dept,faculty,position,username,pwd,cdate,status)values('" + txtname.Text + "','" + txtrollno.Text + "','" + dropdept.SelectedItem + "','" + dropfaculty.SelectedItem + "','" + txtposition.SelectedItem.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + System.DateTime.Today.ToShortDateString() + "','Not Selected')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Candidates Registered Successsfully");
        txtname.Text = "";
        txtpassword.Text = "";
       // txtposition.Text = "";
        txtrollno.Text = "";
        txtusername.Text = "";
    }
    protected void txtrollno_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select rollno from candidatedet where rollno='" + txtrollno.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblrollno.Visible = true;
            Button1.Enabled = false;
        }
        else
        {
            lblrollno.Visible = false;
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select username from candidatedet where username='" + txtusername.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lbluname.Visible = true;
            Button1.Enabled = false;
        }
        else
        {
            lbluname.Visible = false;
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
}