using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class checkeligibility : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,a,status;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["candidate"].ToString();
        data();
        query = "select name,rollno,status,position from candidatedet where username='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblname.Text = rd[0].ToString();
            lblregno.Text = rd[1].ToString();
            status = rd[2].ToString();
            lblapplied.Text = rd[3].ToString();
            if (status == "Selected")
            {
                lbleligible.Text = "Congrats!!!. You are Eligible For this Election as a" + lblapplied.Text + "  " + " Candidate";
            }
            else
            {
                lbleligible.Text = "Sorry You are not Eligible For this Election";
            }
           
        }
        rd.Close();
        con.Close();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
}