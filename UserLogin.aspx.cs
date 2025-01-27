using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Blood_For_Life
{
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            GetUserType();
        }

        void GetUserType()
        {
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from UserTypeTB", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            if(dt.Rows.Count > 0)
            {
                LoginDropDownList.DataSource = dt;
                LoginDropDownList.DataTextField = "UserType";
                LoginDropDownList.DataValueField = "UserID";
                LoginDropDownList.DataBind();
            }
        }






        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donar_Registration.aspx");

        }

        protected void LogBtnclick1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donar_Registration.aspx");

        }
    }
}