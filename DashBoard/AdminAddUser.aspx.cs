using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_For_Life.DashBoard
{
    public partial class AdminAddUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            GetUserType();
        }

        void GetUserType()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlCommand cmd = new SqlCommand("select * from UserTypeTB", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            AdminAddUserDropDownList.DataSource = dt;
            AdminAddUserDropDownList.DataTextField = "UserType";
            AdminAddUserDropDownList.DataValueField = "UserID";
            AdminAddUserDropDownList.DataBind();
        }
        void GetUser()
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from UsersTB where UserSSN = '" + SearchTxt.Text.Trim() + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                UserName.Text = dt.Rows[0][1].ToString();
                UserSSN.Text = dt.Rows[0][2].ToString();
                UserMob.Text = dt.Rows[0][3].ToString();
                UserPassword.Text = dt.Rows[0][4].ToString();

            }
            else
            {
                Response.Write("<script>alert('الرقم القومى خطأ');</script>");

            }
        }

        void ClearForm()
        {
            UserName.Text = "";
            UserSSN.Text = "";
            UserMob.Text = "";
            UserPassword.Text = "";
        }


        protected void AddUserBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into UsersTB values(@UserName,@UserSSN,@UserPhone,@UserPass,@UserType)", con);
            cmd.Parameters.AddWithValue("@UserName", UserName.Text.Trim());
            cmd.Parameters.AddWithValue("@UserSSN", UserSSN.Text.Trim());
            cmd.Parameters.AddWithValue("@UserPhone", UserMob.Text.Trim());
            cmd.Parameters.AddWithValue("@UserPass", UserPassword.Text.Trim());
            cmd.Parameters.AddWithValue("@UserType", AdminAddUserDropDownList.SelectedValue.ToString());
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('تم اضافة المستخدم')</script>");

            ClearForm();
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            GetUser();
        }

        protected void EdirBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update UsersTB set UserName=@UserName ,UserSSN=@UserSSN ,UserPhone =@UserPhone , UserPass=@UserPass , UserType=@UserType where UserSSN = '" + UserSSN.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@UserName", UserName.Text.Trim());
            cmd.Parameters.AddWithValue("@UserSSN", UserSSN.Text.Trim());
            cmd.Parameters.AddWithValue("@UserPhone", UserMob.Text.Trim());
            cmd.Parameters.AddWithValue("@UserPass", UserPassword.Text.Trim());
            cmd.Parameters.AddWithValue("@UserType", AdminAddUserDropDownList.SelectedValue.ToString());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('تم التعديل')</script>");
            ClearForm();
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Delete from UsersTB where UserSSN = '" + UserSSN.Text.Trim() + "' ", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('تم الحذف')</script>");
            ClearForm();
        }
    }
}