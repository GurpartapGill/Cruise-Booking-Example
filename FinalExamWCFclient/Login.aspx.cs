using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalExamWCFclient
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.CausesValidation = false;
            lblMsg.Visible = false;
            Session["user"] = null;
            Session["account"] = null;
            //Application["roomsGuest"] = 150;
            //Application["roomsStaff"] = 50;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

                Conn.Open();

                string cmdstring = "Select count(*) from users where Username = '" + txtUsername.Text + "'";

                SqlCommand checkuser = new SqlCommand(cmdstring, Conn);

                int temp = Convert.ToInt32(checkuser.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    string cmd2 = "Select Pass from users where Username = '" + txtUsername.Text + "'";

                    SqlCommand pass = new SqlCommand(cmd2, Conn);

                    string password = pass.ExecuteScalar().ToString();

                    string cmd3 = "Select FirstName from users where Username = '" + txtUsername.Text + "'";
                    SqlCommand name = new SqlCommand(cmd3, Conn);

                    string fname = name.ExecuteScalar().ToString();

                    string cmd4 = "Select UserType from users where Username = '" + txtUsername.Text + "'";
                    SqlCommand type = new SqlCommand(cmd4, Conn);

                    string utype = type.ExecuteScalar().ToString();

                    Conn.Close();

                    if (password.Equals(txtPassword.Text))
                    {
                        Session["user"] = fname;
                        Session["account"] = txtUsername.Text;
                        Session["utype"] = utype;

                        if (password.Equals("Admin") && txtUsername.Text.Equals("Admin"))
                        {
                            Server.Transfer("Admin.aspx");
                        }
                        else
                        {
                            Server.Transfer("ChooseDate.aspx");
                        }
                    }

                    else
                    {
                        lblMsg.Visible = true;
                        lblMsg.Text = "Invalid Credentials";
                    }
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;

            Response.Redirect("Register.aspx");
        }
    }
}