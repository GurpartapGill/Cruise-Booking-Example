using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalExamWCFclient
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["user"].ToString();
            lblWelcome.Text = "Hi " + name;


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["account"] = null;
            Session["user"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}