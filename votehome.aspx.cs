using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class votehome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,a;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["voting"].ToString();
        data();
        query = "select name,dept,regno from voterdet where uname='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblname.Text = rd[0].ToString();
            lbldept.Text = rd[1].ToString();
            lblregno.Text = rd[2].ToString();
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