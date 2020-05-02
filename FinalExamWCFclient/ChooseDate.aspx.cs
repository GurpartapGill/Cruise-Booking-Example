using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalExamWCFclient
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["date"] = null;
            string name = Session["user"].ToString();
            lblWelcome.Text = "Hi " + name;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //if (rdb1.Checked == false || rdb2.Checked == false || rdb3.Checked == false || rdb4.Checked == false)
            //{
              //  lblMsg.Visible = true;
                //lblMsg.Text = "Please Choose A Date.";
            //}

            //else
            {
                RadioCheck();

                if (Session["utype"].ToString().Equals("S"))
                {
                    Server.Transfer("ReviewPurchase.aspx");
                }
                else
                {
                    Server.Transfer("ChooseRoom.aspx");
                }            
            }
        }

        public void RadioCheck()
        {
            if (rdb1.Checked)
            {
                Session["date"] = rdb1.Text;
            }
            else if (rdb2.Checked)
            {
                Session["date"] = rdb2.Text;
            }
            else if (rdb3.Checked)
            {
                Session["date"] = rdb3.Text;
            }
            else if (rdb4.Checked)
            {
                Session["date"] = rdb4.Text;
            }                
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["manage"] = 1;
            Server.Transfer("Manage.aspx");
        }
    }
}