using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Collections;
public partial class Viewreultvoters : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {
        data();
        query = "select * from finalresult where position='Secretary' and status='yes' and novote=(select max(novote) from finalresult)";
        cmd = new SqlCommand(query, con);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            lblregno.Text = drr[0].ToString();
            lblname.Text = drr[1].ToString();
            lblposition.Text = drr[2].ToString();
            lbltotvote.Text = drr[3].ToString();
        }
        else
        {
            lblname.Text = "...............";
            lblposition.Text = "...............";
            lblregno.Text = "...............";
            lbltotvote.Text = "...............";
        }
        drr.Close();
        con.Close();

        data();
        query = "select * from finalresult where position='Chairperson' and status='yes' and novote=(select max(novote) from finalresult)";
        cmd = new SqlCommand(query, con);
        SqlDataReader drr1 = cmd.ExecuteReader();
        if (drr1.Read())
        {
            lblregno1.Text = drr1[0].ToString();
            lblname1.Text = drr1[1].ToString();
            lblposition1.Text = drr1[2].ToString();
            lbltotvote1.Text = drr1[3].ToString();
        }
        else
        {
            lblname1.Text = "...............";
            lblposition1.Text = "...............";
            lblregno1.Text = "...............";
            lbltotvote1.Text = "...............";
        }
        drr1.Close();
        con.Close();
            
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
}