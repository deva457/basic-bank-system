using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Text;

public partial class third : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Admin\Documents\data.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        OleDbCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Table1";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();



    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        

        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;

        Button3.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        con.Open();
        string query = "select * from Table1 where Cname='" + TextBox1.Text + "'";
        OleDbCommand cmd = new OleDbCommand(query, con);
        OleDbDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox1.Text = dr["Cname"].ToString();
            TextBox2.Text = dr["Account no"].ToString();
            Response.Write("<Script>alert('customers found');</script>");
            if (TextBox3.Text != "")
            {
                int a;
                string b;
                a = Convert.ToInt32(TextBox3.Text);
                b = dr["Balance"].ToString();
                int f, g, h;
                f = Convert.ToInt32(a);
                g = Convert.ToInt32(b);
                h = f + g;
                string i;
                i = Convert.ToString(h);
                Label4.Text = i;
                con.Close();

                con.Open();
                OleDbCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update Table1 set Balance ='" + i + "' where `Account no` ='" + TextBox2.Text + "'";
                cmd1.ExecuteNonQuery();
                con.Close();
                DateTime localDate = DateTime.Now;
                Response.Write("<Script>alert('Successful Transaction');</script>");

                OleDbConnection con1 = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Admin\Documents\transaction.accdb");
                con1.Open();
                OleDbCommand cmd2 = con1.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "Insert into Table1 values('"+ TextBox1.Text + "','"+ TextBox2.Text + "','"+ TextBox3.Text + "','"+localDate.ToString()+"')";
                cmd2.ExecuteNonQuery();
                con1.Close();

                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
             
                Response.Write("<Script>alert('no customers found');</script>");

            }
            
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("sixth.aspx");
    }
}
