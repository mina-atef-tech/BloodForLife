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
    public partial class Donation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RNCRESV;Initial Catalog=BloodForLife;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGov();
            }
        }



        private void GetGov()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open(); 
            }

            SqlCommand cmd = new SqlCommand("select * from GovTB", con);
            SqlDataAdapter da= new SqlDataAdapter(cmd);
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


        protected void PlaceDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select PlaceAddress,PlaceNo from PlaceTB where PlaceID = '" + PlaceDropDownList.SelectedValue.ToString() + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                AddressTxt.Text = dt.Rows[0][0].ToString();
                Phonetxt.Text = dt.Rows[0][1].ToString();

            }
        }
    }
}