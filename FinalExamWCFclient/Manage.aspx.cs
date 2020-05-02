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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string name;

        protected void Page_Load(object sender, EventArgs e)
        {
            name = Session["user"].ToString();
            lblWelcome.Text = "Hi " + name;

            getBookingData();


            if (IsPostBack)
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

                Conn.Open();

                string cmdstring = "Select count(*) from booking where Username = @Username";

                SqlCommand checkuser = new SqlCommand(cmdstring, Conn);

                checkuser.Parameters.AddWithValue("@Username", Session["account"].ToString());
                int temp = Convert.ToInt32(checkuser.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    getBookingData();
                }

                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "NO BOOKING FOUND";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            deleteData();
        }

        public void getBookingData()
        {
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

            Conn.Open();

            string select = "Select * from booking where Username = @Username ";
            SqlCommand cmd = new SqlCommand(select, Conn);
            cmd.Parameters.AddWithValue("@Username", Session["account"].ToString());
            SqlDataReader reader = cmd.ExecuteReader();

            string roomId;
            string numRoom;

            while (reader.Read())
            {
                lblName.Text = Session["user"].ToString();
                lblId.Text = reader.GetInt32(0).ToString();
                lblDate.Text = reader.GetString(4);
                lblGuest.Text = reader.GetInt32(5).ToString() + " Adults "+ reader.GetInt32(6).ToString() + " Children " + reader.GetInt32(7).ToString() + " Seniors" ;
                roomId = reader.GetString(1);
                numRoom = reader.GetInt32(8).ToString();
                lblPrice.Text = "$" + reader.GetInt32(9).ToString();

                if (roomId.Equals("1"))
                {
                    lblRoom.Text = (numRoom + " Inside Staterooms");
                }
                if (roomId.Equals("2"))
                {
                    lblRoom.Text = (numRoom + " Ocean View Staterooms");
                }
                if (roomId.Equals("3"))
                {
                    lblRoom.Text = (numRoom + " Luxurious Suites");
                }
            }
            
            reader.Close();
            Conn.Close();
        }

        public void deleteData()
        {
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

            try
            {
                using(SqlCommand cmd = new SqlCommand())
                {
                    Conn.Open();
                    cmd.Connection = Conn;
                    cmd.CommandText = "Delete from booking where BookingId = @BookingId ";
                    cmd.Parameters.AddWithValue("@BookingId", lblId.Text);
                    cmd.ExecuteNonQuery();
                    lblMsg.Visible = true;
                    lblMsg.Text = "Booking Canceled";
                    Conn.Close();
                }
            }
            catch(Exception ex)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "An error occured. " + ex.ToString();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChooseDate.aspx");
        }
    }
}