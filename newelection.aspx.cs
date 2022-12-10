using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class newelection : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, usname;
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
        query = "insert into electiondet(title,edate,etime,eyear,fulldate,position)values('" + txtelectiontiontitle.Text + "','" + dropday.SelectedItem.Text + "','" + dropmonth.SelectedItem.Text + "','" + dropyear.SelectedItem.Text + "','" + dropday.SelectedItem + "/" + dropmonth.SelectedItem + "/" + dropyear.SelectedItem + "','" + txtposition.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Election Created");
       
        txtelectiontiontitle.Text = "";
    }
}