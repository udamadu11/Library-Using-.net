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
    public partial class adminMemberManagement : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go button
        protected void Button3_Click(object sender, EventArgs e)
        {
         getMember();
        }

        //active
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateStatus("Active");
        }
        //pending
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateStatus("Pending");
        }
        //deactive
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateStatus("Deactive");
        }
        //delete
        protected void Button1_Click(object sender, EventArgs e)
        {
            deleteMember();
        }

        //user define
        bool CheckMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master WHERE member_id = '" + TextBox2.Text.Trim() + "' ", con);
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
                
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        void getMember()
        {
            if (CheckMember())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strCon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * FROM member_master WHERE member_id = '" + TextBox2.Text.Trim() + "' ", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {

                            TextBox7.Text = dr.GetValue(0).ToString();
                            TextBox1.Text = dr.GetValue(10).ToString();
                            TextBox3.Text = dr.GetValue(1).ToString();
                            TextBox4.Text = dr.GetValue(2).ToString();
                            TextBox8.Text = dr.GetValue(3).ToString();
                            TextBox9.Text = dr.GetValue(4).ToString();
                            TextBox10.Text = dr.GetValue(5).ToString();
                            TextBox11.Text = dr.GetValue(6).ToString();
                            TextBox12.Text = dr.GetValue(7).ToString();
                        }
                    }
                    else
                    {
                        clearForm();
                        Response.Write("<script>alert('Member Id does not Match ')</script>");
                        
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Member Id does not Match ')</script>");
            }
            
        }

        void updateStatus(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE member_master SET account_status = '"+status+"' WHERE member_id = '" + TextBox2.Text.Trim() + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Update Succesfully !')</script>");
                GridView1.DataBind();
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }
        void deleteMember()
        {
            if (CheckMember())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strCon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE FROM member_master WHERE member_id = '" + TextBox2.Text.Trim() + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Delete Succesfully !')</script>");
                    GridView1.DataBind();
                    clearForm();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Member Id does not Match ')</script>");
            }
            
        }

        void clearForm()
        {
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
        }

    }
}