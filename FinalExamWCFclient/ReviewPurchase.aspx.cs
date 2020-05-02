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
    public partial class WebForm5 : System.Web.UI.Page
    {
        int roomsGuest;
        int roomsStaff;
        string roomsAvail;

        string name = "";
        string uname = "";
        string date = "";
        string utype = "";

        int numAdult = 0;
        int numSenior = 0;
        int numChildren = 0;
        int totalGuest = 0;

        int numRoom;

        int roomId;

        double discount;
        double price;


        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();

            name = Session["user"].ToString();
            lblWelcome.Text = "Hi " + name;

            uname = Session["account"].ToString();

            date = Session["date"].ToString();
            lblDate.Text = date;

            utype = Session["utype"].ToString();

            if(utype.Equals("S"))
            {
                numAdult = 1;
                numChildren = 0;
                numSenior = 0;
                roomId = 1;
                numRoom = 1;
                discount = 0;
                price = 0;

                lblDisc.Text = "0%";
                lblPrice.Text = "$0";

               // roomsStaff = Convert.ToInt32(Application["roomsStaff"].ToString()) - 1;
                //Application["roomsStaff"] = roomsStaff;
            }

            else
            {
                numAdult = Convert.ToInt32(Session["numAdult"].ToString());
                numChildren = Convert.ToInt32(Session["numChildren"].ToString());
                numSenior = Convert.ToInt32(Session["numSenior"].ToString());

                totalGuest = client.CalculateTotalGuest(numAdult, numChildren, numSenior);
                roomId = Convert.ToInt32(Session["roomId"].ToString());

                numRoom = Convert.ToInt32(Session["numRooms"].ToString());

                discount = client.CalculateDiscount(numSenior, numChildren);
                lblDisc.Text = discount.ToString() + "%";

                price = client.CalculateRoomPrice(roomId, totalGuest, discount);
                lblPrice.Text = "$ " + price.ToString();

                //roomsGuest = Convert.ToInt32(Application["roomsGuest"].ToString()) - numRoom;
                //Application["roomsGuest"] = roomsGuest;
            }

            string guests = client.GuestToString(numAdult, numChildren, numSenior);
            lblGuest.Text = guests;

            string room = client.RoomToString(roomId, numRoom);
            lblRoom.Text = room;

            getUserData();

            //if(Convert.ToInt32(Application["roomsGuest"].ToString()) >= 0 || Convert.ToInt32(Application["roomsGuest"].ToString()) >= 0)
            //{
            //    sendBookingInfo();
            //}
            //else
            //{
            //    lblMsg.Visible = true;
            //    lblMsg.Text = "SORRY, WE DO NOT HAVE ENOUGH ROOMS!! Please start over";
            //}
        }

        public void getUserData()
        {
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

            Conn.Open();

            string select = "Select * from users where Username =  @Username ";
            SqlCommand cmd = new SqlCommand(select, Conn);
            cmd.Parameters.AddWithValue("@Username", Session["account"].ToString());
            SqlDataReader reader = cmd.ExecuteReader();
            

            while(reader.Read())
            {
                lblName.Text = reader.GetString(1);
                lblPhone.Text = reader.GetString(3);
                lblEmail.Text = reader.GetString(4);
                lblType.Text = reader.GetString(7);
            }

            reader.Close();
            Conn.Close();
        }

        public void sendBookingInfo()
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

                Conn.Open();

                string insertString = "Insert into booking VALUES (@RoomTypeId,@UserName,@UserType,@BookingDate,@NumAdult,@NumChildren,@NumSenior,@NumRooms, @Price)";

                SqlCommand insertUser = new SqlCommand(insertString, Conn);

                insertUser.Parameters.AddWithValue("@RoomTypeId", roomId);
                insertUser.Parameters.AddWithValue("@UserName", uname);
                insertUser.Parameters.AddWithValue("@UserType", utype);
                insertUser.Parameters.AddWithValue("@BookingDate", lblDate.Text);
                insertUser.Parameters.AddWithValue("@NumAdult", numAdult.ToString());
                insertUser.Parameters.AddWithValue("@NumChildren", numChildren.ToString());
                insertUser.Parameters.AddWithValue("@NumSenior", numSenior.ToString());
                insertUser.Parameters.AddWithValue("@NumRooms", numRoom);
                insertUser.Parameters.AddWithValue("@Price", price);
                
                insertUser.ExecuteNonQuery();

                Conn.Close();
            }
            catch (Exception Ex)
            {
                Response.Write("Error");
                Response.Write(Ex.ToString());
            }
        }

        
        /*public void checkRooms()
        {
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString);

            Conn.Open();

            string select = "Select * from rooms where RoomTypeId =  @roomId ";
            SqlCommand cmd = new SqlCommand(select, Conn);
            cmd.Parameters.AddWithValue("@roomId", roomId);
            SqlDataReader reader = cmd.ExecuteReader();
            

            while(reader.Read())
            {
                roomsAvail = reader.GetString(3);
                lblType.Text = roomsAvail;
            }

            reader.Close();
            Conn.Close();
        }*/
        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["account"] = null;
            Application["roomsGuest"] = roomsGuest;
            Application["roomsStaff"] = roomsStaff;
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sendBookingInfo();
            lblMsg.Visible = true;
            lblMsg.Text = "Cruise Booked Successfully";
        }
    }
}