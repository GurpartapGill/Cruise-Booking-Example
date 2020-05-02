using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalExamWCFclient
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        int numOceanRoom ;
        int numSuiteRoom ;
        int numInsideRoom;
        int numRooms ;
        int roomId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["user"].ToString();
            lblWelcome.Text = "Hi " + name;

            if(Application["roomsGust"] == null)
            {
                lblGRooms.Text = "150";
            }
            else
            {
                lblGRooms.Text = Application["roomsGuest"].ToString();
            }

            if (Application["roomsStaff"] == null)
            {
                lblSRooms.Text = "50";
            }
            else
            {
                lblSRooms.Text = Application["roomsStaff"].ToString();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();

            SelectedRoom();

            if(client.DisplayMsg(numInsideRoom, numOceanRoom, numSuiteRoom) == true)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "You may select only one type of room per booking.";
            }
            else
            {
                Session["count"] = 1;
                Session["numRooms"] = numRooms;
                Session["roomId"] = roomId;
                Application["roomsGuest"] = lblGRooms.Text;
                Application["roomsGuest"] = lblGRooms.Text;
                Server.Transfer("ChooseGuest.aspx");
            }
        }

        public void SelectedRoom()
        {
            if (txtInside.Text != "0")
            {
                numInsideRoom = Convert.ToInt32(txtInside.Text);
                numRooms = numInsideRoom;
                //Session["numRooms"] = numInsideRoom.ToString();
                roomId = 1;
            }
            else
            {
                numInsideRoom = 0;
            }

            if (txtOcean.Text != "0")
            {
                numOceanRoom = Convert.ToInt32(txtOcean.Text);
                numRooms = numOceanRoom;
                //Session["numRooms"] = numOceanRoom.ToString();
                roomId = 2;
            }
            else
            {
                numOceanRoom = 0;
            }

            if (txtSuite.Text != "0")
            {
                numSuiteRoom = Convert.ToInt32(txtSuite.Text);
                numRooms = numSuiteRoom;
                //Session["numRooms"] = numSuiteRoom.ToString();
                roomId = 3;
            }
            else
            {
                numSuiteRoom = 0;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage.aspx");
        }
    }
}