using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Blood_For_Life
{

    public partial class Donar_Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            GetBloodType();
            GetGender();
        }

        void DonarSignin()
        {
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insert into DonarTB (DName,DMob,DWhats,DAddress1,DAddress2,DEmail,DAge,DGender,DBloodType,DLastDonation,DUserName,DPassword,DRePassowrd,DSSN)" +
                "values(@DName,@DMob,@DWhats,@DAddress1,@DAddress2,@DEmail,@DAge,@DGender,@DBloodType,@DLastDonation,@DUserName,@DPassword,@DRePassowrd,@DSSN)", con);
            cmd.Parameters.AddWithValue("@DName",DonarName.Text.Trim());
            cmd.Parameters.AddWithValue("@DMob",DonarMob.Text.Trim());
            cmd.Parameters.AddWithValue("@DWhats",DonarWhats.Text.Trim());
            cmd.Parameters.AddWithValue("@DAddress1",DonarAddress1.Text.Trim());
            cmd.Parameters.AddWithValue("@DAddress2",DonarAddress2.Text.Trim());
            cmd.Parameters.AddWithValue("@DEmail",DonarEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@DAge",DonarAge.Text.Trim());
            cmd.Parameters.AddWithValue("@DGender",GenderDropDownList.SelectedValue.Trim());
            cmd.Parameters.AddWithValue("@DBloodType",BloodTypeDropDownList.SelectedValue.Trim());
            cmd.Parameters.AddWithValue("@DLastDonation",LastDonationDate.Text.Trim());
            cmd.Parameters.AddWithValue("@DUserName",DonarUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@DPassword",DonarPassword.Text.Trim());
            cmd.Parameters.AddWithValue("@DRePassowrd",DonarPassword2.Text.Trim());
            cmd.Parameters.AddWithValue("@DSSN", DonarSSN.Text.Trim());


            cmd.ExecuteNonQuery();
            Response.Write("<Script>alert('welcome to our world')</Script>");

        }

        void GetBloodType()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select BloodType from BloodTypeTB", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            BloodTypeDropDownList.DataSource=dt;
            BloodTypeDropDownList.DataValueField = "BloodType";
            BloodTypeDropDownList.DataBind();
        }

        void GetGender()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select GenderType from GenderTB", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            GenderDropDownList.DataSource=dt;
            GenderDropDownList.DataValueField = "GenderType";
            GenderDropDownList.DataBind();
        }

        bool DonarIDExist()
        {
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            try
            {
                SqlCommand cmd = new SqlCommand("select * from DonarTB where DSSN= '"+DonarSSN.Text.Trim()+"'",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;   
                }
            }
            catch (Exception ex) 
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        protected void DonarSubmit_Click(object sender, EventArgs e)
        {
            if (DonarIDExist())
            {
                Response.Write("<script>alert('الرقم القومى موجود')</script>");
            }
            else
            {
                DonarSignin();

            }




        }
    }
}