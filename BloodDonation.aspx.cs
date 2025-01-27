using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_For_Life
{
    public partial class BloodDonation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGov();
                GetBloodType();
            }
        }



        private void GetGov()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from GovTB", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GovDropDownList.DataSource = dt;
                GovDropDownList.DataTextField = "GovName";
                GovDropDownList.DataValueField = "GovID";
                GovDropDownList.DataBind();
            }

        }

        protected void GovDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select PlaceID,PlaceName from PlaceTB where GovID = '" + GovDropDownList.SelectedValue.ToString() + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            PlaceDropDownList.DataSource = dt;
            PlaceDropDownList.DataTextField = "PlaceName";
            PlaceDropDownList.DataValueField = "PlaceID";
            PlaceDropDownList.DataBind();
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

        protected void SubmitDonation_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insert into DonationTB (DonarName,DonarSSN,BloodType,DonationDate,DonationGov,DonationPlace,DonationUserPhone) values (@DonarName,@DonarSSN,@BloodType,@DonationDate,@DonationGov,@DonationPlace,@DonationUserPhone)", con);
            cmd.Parameters.AddWithValue("@DonarName", DonarName.Text.Trim());
            cmd.Parameters.AddWithValue("@DonarSSN", DonarSSN.Text.Trim());
            cmd.Parameters.AddWithValue("@BloodType", BloodTypeDropDownList.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@DonationDate", DonationDate.Text.Trim());
            cmd.Parameters.AddWithValue("@DonationGov", GovDropDownList.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@DonationPlace",PlaceDropDownList.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@DonationUserPhone", DonarMob.Text.Trim());
            
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('تم تسجيل الميعاد')</script>");



        }
    }
    }
