using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class winnerprofile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,roll;
    protected void Page_Load(object sender, EventArgs e)
    {
        data();
        query = "select * from finalresult where status='yes' and novote=(select max(novote) from finalresult)";
        cmd = new SqlCommand(query, con);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            lblwinname.Text = drr[1].ToString();
            lblposition.Text = drr[2].ToString();
            lblnovotes.Text = drr[3].ToString();
            roll = drr[0].ToString();
        }
        drr.Close();
        con.Close();

        data();
        query = "select * from candidatedet where rollno='" + roll + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblname.Text = rd[1].ToString();
            lblrollno.Text = rd[2].ToString();
            lbldepartment.Text = rd[3].ToString();
            lblfaculty.Text = rd[4].ToString();
            lblsposition.Text = rd[5].ToString();

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