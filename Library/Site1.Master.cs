using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton7.Visible = false; // view book
                    LinkButton8.Visible = true; // user login
                    LinkButton9.Visible = true; // user sign up
                    LinkButton10.Visible = false; // hello user
                    LinkButton11.Visible = false; //  logout

                    LinkButton1.Visible = true; // admin login
                    LinkButton2.Visible = false; //  author management
                    LinkButton3.Visible = false; // hello user
                    LinkButton4.Visible = false; //  publisher management
                    LinkButton5.Visible = false; // book inventory
                    LinkButton6.Visible = false; //  member management

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton7.Visible = true; // view book
                    LinkButton8.Visible = false; // user login
                    LinkButton9.Visible = false; // user sign up
                    LinkButton10.Visible = true; // hello user
                    LinkButton10.Text = "Hello " + Session["username"].ToString();

                    LinkButton11.Visible = true; //  logout

                    LinkButton1.Visible = true; // admin login
                    LinkButton2.Visible = false; //  author management
                    LinkButton3.Visible = false; // hello user
                    LinkButton4.Visible = false; //  publisher management
                    LinkButton5.Visible = false; // book inventory
                    LinkButton6.Visible = false; //  member management
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton7.Visible = false; // view book
                    LinkButton8.Visible = false; // user login
                    LinkButton9.Visible = false; // user sign up
                    LinkButton10.Visible = true; // hello user
                    LinkButton10.Text = "Hello Admin";

                    LinkButton11.Visible = true; //  logout

                    LinkButton1.Visible = false; // admin login
                    LinkButton2.Visible = true; //  author management
                    LinkButton3.Visible = true; // hello user
                    LinkButton4.Visible = true; //  publisher management
                    LinkButton5.Visible = true; // book inventory
                    LinkButton6.Visible = true; //  member management
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAuthorManagement.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPublisherManagement.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookIssuing.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminMemberManagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookInventory.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("userSignUp.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton7.Visible = false; // view book
            LinkButton8.Visible = true; // user login
            LinkButton9.Visible = true; // user sign up
            LinkButton10.Visible = false; // hello user
            LinkButton11.Visible = false; //  logout

            LinkButton1.Visible = true; // admin login
            LinkButton2.Visible = false; //  author management
            LinkButton3.Visible = false; // hello user
            LinkButton4.Visible = false; //  publisher management
            LinkButton5.Visible = false; // book inventory
            LinkButton6.Visible = false; //  member management

        }
    }
}