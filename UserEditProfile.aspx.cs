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
    public partial class UserEditProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                GetInfo();
                GetBloodType();
                GetGender();

            }
        }


        void GetInfo()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from DonarTB where DID =3 ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                DonarDID.Text = dt.Rows[0][0].ToString();
                DonarName.Text = dt.Rows[0][1].ToString();
                DonarMob.Text = dt.Rows[0][2].ToString();
                DonarWhats.Text = dt.Rows[0][3].ToString();
                DonarAddress1.Text = dt.Rows[0][4].ToString();
                DonarAddress2.Text = dt.Rows[0][5].ToString();
                DonarEmail.Text = dt.Rows[0][6].ToString();
                DonarAge.Text = dt.Rows[0][7].ToString();
                GenderDropDownList.Text = dt.Rows[0][8].ToString();
                BloodTypeDropDownList.Text = dt.Rows[0][9].ToString();
                LastDonationDate.Text = dt.Rows[0][10].ToString();
                DonarUsername.Text = dt.Rows[0][11].ToString();
                DonarPassword.Text = dt.Rows[0][12].ToString();
                DonarPassword2.Text = dt.Rows[0][13].ToString();
                DonarSSN.Text = dt.Rows[0][14].ToString();
            }
        }

        protected void EditProfile_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UPDATE DonarTB SET DName=@DName , DMob=@DMob,DWhats=@DWhats,DAddress1=@DAddress1,DAddress2=@DAddress2,DEmail=@DEmail,DAge=@DAge,DGender=@DGender,DLastDonation=@DLastDonation,DBloodType=@DBloodType,DUserName=@DUserName,DPassword=@DPassword,DRePassowrd=@DRePassowrd,DSSN=@DSSN WHERE DID =3 ", con);
            cmd.Parameters.AddWithValue("@DName", DonarName.Text.Trim());
            cmd.Parameters.AddWithValue("@DMob", DonarMob.Text.Trim());
            cmd.Parameters.AddWithValue("@DWhats", DonarWhats.Text.Trim());
            cmd.Parameters.AddWithValue("@DAddress1", DonarAddress1.Text.Trim());
            cmd.Parameters.AddWithValue("@DAddress2", DonarAddress2.Text.Trim());
            cmd.Parameters.AddWithValue("@DEmail", DonarEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@DAge", DonarAge.Text.Trim());
            cmd.Parameters.AddWithValue("@DGender", GenderDropDownList.Text.Trim());
            cmd.Parameters.AddWithValue("@DBloodType", BloodTypeDropDownList.Text.Trim());
            cmd.Parameters.AddWithValue("@DLastDonation", LastDonationDate.Text.Trim());
            cmd.Parameters.AddWithValue("@DUserName", DonarUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@DPassword", DonarPassword.Text.Trim());
            cmd.Parameters.AddWithValue("@DRePassowrd", DonarPassword2.Text.Trim());
            cmd.Parameters.AddWithValue("@DSSN", DonarSSN.Text.Trim());


            cmd.ExecuteNonQuery();
            Response.Write("<Script>alert('تم تحديث البيانات')</Script>");
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
            BloodTypeDropDownList.DataSource = dt;
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
            GenderDropDownList.DataSource = dt;
            GenderDropDownList.DataValueField = "GenderType";
            GenderDropDownList.DataBind();
        }
    }
}