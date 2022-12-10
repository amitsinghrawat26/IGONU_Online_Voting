using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class index : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        data();
        query = "select title,edate,etime,eyear from electiondet";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblelecdate.Text = rd[0].ToString() + " - " + rd[1].ToString() + "/ " + rd[2].ToString() + "/" + rd[3].ToString();
        }
        rd.Close();
        con.Close();

        data();
         query = "select * from finalresult where status='yes' and novote=(select max(novote) from finalresult)";
        cmd = new SqlCommand(query, con);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            lblwinner.Text = "Name : " + drr[1].ToString() + "  /  " + "Position : " + drr[2].ToString() + "  /  " + "No of votes : " + drr[3].ToString();
        }
        drr.Close();
        con.Close();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (dropuser.SelectedItem.Text == "Staff")
        {
            data();
            query = "select username,password from staffdet where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["staff"] = txtusername.Text.ToString();
                Response.Redirect("staffhome.aspx");
            }
            else
            {
                MessageBox.Show("Invalid Staff");
            }
            rd.Close();
            con.Close();
        }
        else if (dropuser.SelectedItem.Text == "Candidate")
        {
            data();
            query = "select username,pwd from candidatedet where username='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["candidate"] = txtusername.Text.ToString();
                Response.Redirect("checkeligibility.aspx");
            }
            else
            {
                MessageBox.Show("Invalid Candidate");
            }
            rd.Close();
            con.Close();
        }
        else if (dropuser.SelectedItem.Text == "Voting")
        {
            data();
            query = "select uname,pwd from voterdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["voting"] = txtusername.Text.ToString();
                Response.Redirect("votehome.aspx");
            }
            else
            {
                MessageBox.Show("Invalid Voter");
            }
            rd.Close();
            con.Close();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("candidateregister.aspx");
    }
}