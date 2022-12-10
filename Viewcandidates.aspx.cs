using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class Viewcandidates : System.Web.UI.Page
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string regno = GridView1.SelectedRow.Cells[1].Text.ToString();
        data();
        query = "update candidatedet set status='Selected' where rollno='" + regno + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        GridView2.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        data();
        query = "select attenper,noarrear,name from voterdet where regno='" + txtrollno.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblattendance.Text = rd[0].ToString();
            lblarrears.Text = rd[1].ToString();
            lblname.Text = rd[2].ToString();
        }
        else
        {
            lblarrears.Text = "Not Found";
            lblattendance.Text = "Not Found";
            lblname.Text = "Not Found";
        }
        rd.Close();
        con.Close();
    }
}