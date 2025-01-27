using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_For_Life
{
    public partial class UsersLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogBTN_Click(object sender, EventArgs e)
        {

      
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from UsersTB where UserSSN = '"+ UserSSN.Text.Trim()+ "' and UserPass='"+UserPass.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                    //Response.Write("<script>alert('"+dr.GetValue(1).ToString()+"');</script>");
                    Session["username"] = dr.GetValue(1).ToString();
                    Session["role"] = "user";

                    }
                Response.Redirect("HomePage.aspx");

                }
                else
                {
                    Response.Write("<script>alert('الرقم القومى او كلمة المرور غير صحيحة');</script>");

                }
            


        }

        protected void SignBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donar_Registration.aspx");
        }


    }
}
