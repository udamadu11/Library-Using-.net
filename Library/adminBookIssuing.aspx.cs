using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class adminBookIssuing : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // issue
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkBook() && checkMember())
            {
                issuBook();
            }
            else
            {
                
                Response.Write("<script>alert('Invalid Book Id Or Member Id')</script>");
            }
        }
        //return 
        protected void Button2_Click(object sender, EventArgs e)
        {

        }


        // go buuton
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT book_name FROM book_master WHERE book_d = '" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Book Id')</script>");
                }

                cmd = new SqlCommand("SELECT full_name FROM member_master WHERE member_id= '" + TextBox2.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Member Id')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
            
        }

        //user Define functions

        bool checkBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master WHERE book_d = '" + TextBox1.Text.Trim() + "' AND current_stock >0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return true;  
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        bool checkMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master WHERE member_id = '" + TextBox2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        void issuBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue(member_id,member_name,book_id,book_name,issue_date,due_date)VALUES(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);

                cmd.Parameters.AddWithValue("@member_id",TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name",TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date",TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date",TextBox6.Text.Trim());
    
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("UPDATE book_master SET current_stock = current_stock-1 WHERE book_d = '"+TextBox1.Text.Trim()+"'", con);
                cmd.ExecuteNonQuery();

                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Issued Book')</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                
            }
        }

    }
}