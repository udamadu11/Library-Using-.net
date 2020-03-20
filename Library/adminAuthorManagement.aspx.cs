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
    public partial class adminAuthorManagement : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkAuthorExist())
            {
                Response.Write("<script>alert('Author Id Already Exist ! try Another..')</script>");
            }
            else
            {
                authorNewAdd();
            }
            

            
        }

        bool checkAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master WHERE author_id = '"+TextBox1.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
                return false;
            }
        }

        void authorNewAdd()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO author_master(author_id,author_name) VALUES(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        //update

            void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE author_master SET author_name = @author_name WHERE author_id = '"+TextBox1.Text.Trim()+"' ", con);
                cmd.Parameters.AddWithValue("@author_name",TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Update successfully !')</script>");

            }
            catch(Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkAuthorExist())
            {
                updateAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author does not Exist !')</script>");
            }
        }

        //delete
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}