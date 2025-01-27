using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_For_Life
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["role"].Equals(""))
            //{
            //    Hello.Visible = false; //hello Btn
            //    LogOut.Visible = false; // Logout Btn
            //}

            //else if (Session["role"].Equals("user"))
            //{
            //    Hello.Visible = true; //hello Btn
            //    Hello.Text = "مرحبا" + Session["username"].ToString();
            //    LogOut.Visible = true; // Logout Btn
            //}
        }


        protected void LogOut_Click(object sender, EventArgs e)
        {
            Session["role"] = "" ?? "";
            Hello.Visible = false; //hello Btn
            LogOut.Visible = true; // Logout Btn
            SignUp.Visible = true;

        }

        protected void MainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donar_Registration.aspx");

        }


    }
}