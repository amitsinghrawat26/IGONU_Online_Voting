using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Windows.Forms;
using System.Data.SqlClient;
public partial class vote : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    int novote;
    string day, month, year;
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        day = date.Day.ToString();
        month = date.Month.ToString();
        year = date.Year.ToString();

        a = Session["voting"].ToString();
        data();
        query = "select name,dept,regno,yr from voterdet where uname='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblname.Text = rd[0].ToString();
            lbldept.Text = rd[1].ToString();
            lblregno.Text = rd[2].ToString();
            lblyear.Text = rd[3].ToString();
        }
        rd.Close();
        con.Close();
        data();
        query = "select position from electiondet";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        while (red.Read())
        {
            lbl.Text = red[0].ToString();
        }
        red.Close();
        con.Close();

        //}
        //else if (lblyear.Text == "2")
        //{
          //  lbl.Text = "Chairperson";
        //}

        

        data();
        query = "select edate,etime,eyear from electiondet where edate='" + day + "' and etime='" + month + "' and eyear='" + year + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Panel1.Visible = true;
            lblack.Visible = false;
            data();
            query = "select voterregno from voteresult where voterregno='" + lblregno.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rdd = cmd.ExecuteReader();
            if (rdd.Read())
            {
                lblalready.Visible = true;
                GridView1.Enabled = false;
            }
            else
            {
                GridView1.Enabled = true;
                lblalready.Visible = false;
            }
            rdd.Close();
            con.Close();

        }
        else
        {
            Panel1.Visible = false;
            lblack.Visible = true;
        }
        dr.Close();
        con.Close();



    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    string can_name, cand_regno,position;
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        can_name = GridView1.SelectedRow.Cells[0].Text.ToString();
        cand_regno = GridView1.SelectedRow.Cells[1].Text.ToString();
        position=GridView1.SelectedRow.Cells[4].Text.ToString();
        data();
        query = "insert into voteresult(candname,candregno,position,novote,voterregno,votername)values('" + can_name + "','" + cand_regno + "','" + position + "',1,'" + lblregno.Text + "','" + lblname.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Thank You for Voting");
        MessageBox.Show("Your Vote has been added Successfully");
        Response.Redirect("vote.aspx");
    }
}