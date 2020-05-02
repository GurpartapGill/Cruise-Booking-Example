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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.CausesValidation = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            chkRadio();

            int chk = CheckUser();

            if (chk == 1)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "This Username already exists.";
            }

            else
            {
                SaveData();
            }
        }

        public int CheckUser()
        {
            int temp = 0;

            if (IsPostBack)
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

                Conn.Open();

                string cmdstring = "Select count(*) from users where Username = '" + txtUname.Text + "'";

                SqlCommand userexist = new SqlCommand(cmdstring, Conn);

                temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());

                Conn.Close();
            }

            return temp;
        }

        public void SaveData()
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

                Conn.Open();

                string insertString = "Insert into users VALUES (@FirstName, @LastName, @Phone, @Email, @Username, @Pass, @UserType)";

                SqlCommand insertUser = new SqlCommand(insertString, Conn);

                insertUser.Parameters.AddWithValue("@FirstName", txtFname.Text);
                insertUser.Parameters.AddWithValue("@LastName", txtLname.Text);
                insertUser.Parameters.AddWithValue("@Phone", txtPhone.Text);
                insertUser.Parameters.AddWithValue("@Email", txtEmail.Text);
                insertUser.Parameters.AddWithValue("@Username", txtUname.Text);
                insertUser.Parameters.AddWithValue("@Pass", txtPass.Text);
   
                if(rdbYes.Checked)
                {
                    insertUser.Parameters.AddWithValue("@UserType", "S");
                }
                else
                {
                    insertUser.Parameters.AddWithValue("@UserType", "G");
                }

                insertUser.ExecuteNonQuery();

                Conn.Close();

                lblMsg.Visible = true;
                lblMsg.Text = "User Created!";
            }
            catch (Exception Ex)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "An error occured. " + Ex.ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx");
        }

        public void chkRadio()
        {
            if (rdbYes.Checked == false || rdbNo.Checked == false)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Please choose one of the radio buttons.";
            }
        }
    }
}