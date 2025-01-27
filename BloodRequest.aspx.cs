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
    public partial class BloodRequest : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            GetGov();
            GetBloodType();
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

        protected void SubmitRequest_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into BloodRequests (RequestName,RequestSSN,RequestPhone,RequestGov,BloodType,CreatedAt) values(@RequestName,@RequestSSN,@RequestPhone,@RequestGov,@BloodType,@CreatedAt)", con);
            cmd.Parameters.AddWithValue("@RequestName", RequestName.Text.Trim());
            cmd.Parameters.AddWithValue("@RequestSSN", RequestSSN.Text.Trim());
            cmd.Parameters.AddWithValue("@RequestPhone",RequestPhone.Text.Trim());
            cmd.Parameters.AddWithValue("@RequestGov",GovDropDownList.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@BloodType",BloodTypeDropDownList.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CreatedAt",DateTime.Now);
            cmd.ExecuteNonQuery();


            Response.Write("<Script>alert('تم عمل الطلب')</Script>");






        }
    }
}