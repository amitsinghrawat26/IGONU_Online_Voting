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
public partial class Staffviewresult : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    ArrayList regno = new ArrayList();
    ArrayList name = new ArrayList();
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
        query = "delete from finalresult where position='" + dropposition.SelectedItem.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "select distinct(candregno),candname from voteresult where position='" + dropposition.SelectedItem.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            regno.Add(rd[0].ToString());
            name.Add(rd[1].ToString());
        }
       
        rd.Close();
        con.Close();

        for (int i = 0; i < regno.Count; i++)
        {
            data();
            query = "select sum(novote) from voteresult where candregno='" + regno[i].ToString() + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rdd = cmd.ExecuteReader();
            while (rdd.Read())
            {
                data();
                query = "insert into finalresult(regno,name,position,novote,status)values('" + regno[i] + "','" + name[i] + "','" + dropposition.SelectedItem.Text + "'," + rdd[0] + ",'no')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            rdd.Close();
            con.Close();
        }
        GridView1.DataBind();

        data();
        query = "select * from finalresult where novote=(select max(novote) from finalresult)";
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
            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        data();
        query = "update finalresult set status='yes' where position='" + dropposition.SelectedItem.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Election Result Announced");
    }
}