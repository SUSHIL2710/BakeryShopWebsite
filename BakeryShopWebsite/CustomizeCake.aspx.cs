using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BakeryShopWebsite
{
    public partial class CustomizeCake : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-3U665T1; Initial Catalog=ShopBakery; Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CustomizeCake" + "(Name, Address, Contact, Details) values(@Name,@Address,@Contact,@Details)", con);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddr.Text);
            cmd.Parameters.AddWithValue("@Contact", txtNumber.Text);
            cmd.Parameters.AddWithValue("@Details", txtDetails.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data Submited Successfully');</script>");
        }
    }
}