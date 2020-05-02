using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalExamWCFclient
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        int numAdult1;
        int numSenior1;
        int numChildren1;

        int numAdult2;
        int numSenior2;
        int numChildren2;

        int roomsGuest;
        //int roomsStaff;

        int count;

        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["user"].ToString();
            lblWelcome.Text = "Hi " + name;

            int numRooms = Convert.ToInt32(Session["numRooms"].ToString());

            
            //roomsGuest = Convert.ToInt32(Application["roomsGuest"].ToString()) - numRooms;



            if(Convert.ToInt32(Session["count"].ToString()) == 1)
            {
                count = 1;
                Session["numAdult"] = 0;
                Session["numChildren"] = 0;
                Session["numSenior"] = 0;
                
                if(numRooms > 1)
                {
                    LinkButton2.Visible = true;
                    LinkButton1.Visible = false;
                    Label1.Text += " 1:";
                }
            }
            else
            {
                count = 2;
                Label1.Text = "Please Enter The Number Of Guests in Room 2:";
                LinkButton2.Visible = false;
                LinkButton1.Visible = true;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            guestCount(count);
            Server.Transfer("ReviewPurchase.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            guestCount(count);
            Session["count"] = 2;
            Server.Transfer("ChooseGuest.aspx");
        }

        public void guestCount(int count)
        {
            if (txtAdult.Text != "0")
            {
                if(count == 1)
                {
                    numAdult1 = Convert.ToInt32(txtAdult.Text);
                    Session["numAdult"] = numAdult1;
                }
                if(count == 2)
                {
                    numAdult2 = Convert.ToInt32(txtAdult.Text);
                    Session["numAdult"] = Convert.ToInt32(Session["numAdult"].ToString()) + numAdult2;
                }               
            }
        
            if (txtChildren.Text != "0")
            {
                if (count == 1)
                {
                    numChildren1 = Convert.ToInt32(txtChildren.Text);
                    Session["numChildren"] = numChildren1;
                }
                if(count == 2)
                {
                    numChildren2 = Convert.ToInt32(txtChildren.Text);
                    Session["numChildren"] = Convert.ToInt32(Session["numChildren"].ToString()) + numChildren2;
                }
            }

            if (txtSenior.Text != "0")
            {
                if (count == 1)
                {
                    numSenior1 = Convert.ToInt32(txtSenior.Text);
                    Session["numSenior"] = numSenior1;
                }
                if (count == 2)
                {
                    numSenior2 += Convert.ToInt32(txtSenior.Text);
                    Session["numSenior"] = Convert.ToInt32(Session["numSenior"].ToString()) + numSenior2;
                }
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage.aspx");
        }
    }
}