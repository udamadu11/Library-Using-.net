﻿using System;
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
    public partial class adminPublisherManagement : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkExit())
            {
                Response.Write("<script>alert('Publish Id Already Exist ! try Another.. ')</script>");
            }
            else
            {
                addPublish();
            }
        }

        //update
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkExit())
            {
                updatePublish();
            }
            else
            {
                Response.Write("<script>alert('Publish Id does not Exist !')</script>");
            }
        }
        //delete
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        //user define
        bool checkExit()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM publish_master WHERE publish_id = '" + TextBox1.Text.Trim() + "' ", con);
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
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }
        void addPublish()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO publish_master(publish_id,publish_name) VALUES(@publish_id,@publish_name)", con);
                cmd.Parameters.AddWithValue("@publish_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publish_name", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added')</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        void updatePublish()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE publish_master SET publish_name = @publish_name WHERE publish_id = '"+TextBox1.Text.Trim()+"' ", con);
                cmd.Parameters.AddWithValue("@publish_name", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Updated')</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}