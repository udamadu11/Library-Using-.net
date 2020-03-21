using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class adminBookInventory : System.Web.UI.Page
    {
        string striCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            fillPublishAuthor();
        }

        //go button
        protected void Button3_Click(object sender, EventArgs e)
        {
            getId();
        }

        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkBookId())
            {
                Response.Write("<script>alert('Book id Already Exist !!')</script>");
            }
            else
            {
                addBookDeatails();
            }
        }
        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        //user define functions

        //publisher and aauthor dropdown
        void fillPublishAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(striCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT publish_name FROM publish_master", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publish_name";
                DropDownList2.DataBind();

                cmd = new SqlCommand("SELECT author_name FROM author_master", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "author_name";
                DropDownList3.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        //check book id 
        bool checkBookId()
        {
            try
            {
                SqlConnection con = new SqlConnection(striCon);
                if(con.State == ConnectionState.Closed )
                {
                    con.Close();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master WHERE book_d = '"+TextBox2.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                
            }catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        //add book deatails
        void addBookDeatails()
        {
            try
            {
                //image upload
                string filepath = "~/book Inventory/book.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("book inventory/" + filename));
                filepath = "~/book Inventory/" + filename;

                //select multiple genre
                string genre = "";
                foreach (int i in  ListBox1.GetSelectedIndices())
                {
                    genre = genre + ListBox1.Items[i] + ",";
                }
                genre = genre.Remove(genre.Length-1);


                SqlConnection con = new SqlConnection(striCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_master(book_d,book_name,genre,author_name,publisher_name,publish_date,language,edition,book_cost,no_pages,book_description,actual_stock,current_stock,book_img_link) VALUES(@book_d,@book_name,@genre,@author_name,@publisher_name,@publish_date,@language,@edition,@book_cost,@no_pages,@book_description,@actual_stock,@current_stock,@book_img_link)", con);
                cmd.Parameters.AddWithValue("@book_d", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@genre",genre);
                cmd.Parameters.AddWithValue("@author_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@no_pages", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added')</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        //get information by id
        void getId()
        {
            try
            {
                SqlConnection con = new SqlConnection(striCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master WHERE book_d = '"+TextBox2.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    TextBox7.Text = dt.Rows[0]["book_name"].ToString();
                    TextBox1.Text = dt.Rows[0]["publish_date"].ToString();
                    TextBox9.Text = dt.Rows[0]["edition"].ToString();
                    TextBox10.Text = dt.Rows[0]["book_cost"].ToString().Trim();
                    TextBox11.Text = dt.Rows[0]["no_pages"].ToString().Trim();
                    TextBox3.Text = dt.Rows[0]["actual_stock"].ToString().Trim();
                    TextBox4.Text = dt.Rows[0]["current_stock"].ToString().Trim();
                    TextBox12.Text = dt.Rows[0]["book_description"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["publisher_name"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["author_name"].ToString().Trim();

                    TextBox5.Text = "" + (Convert.ToInt32(TextBox3.Text) - Convert.ToInt32(TextBox4.Text));
                        
                        //Convert((dt.Rows[0]["actual_cost"].ToString()) - (dt.Rows[0]["currebt_cost"].ToString()));

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                    for(int i = 0; i < genre.Length ; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count ; j++)
                        {
                            if (ListBox1.Items[j].ToString() == genre[i])
                            {
                                ListBox1.Items[j].Selected = true;
                            }
                        }
                    }

                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid Book Id')</script>");
                }
            }catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}