using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BakeryShopWebsite
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-3U665T1; Initial Catalog=ShopBakery; Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into CardDetails" + "(Fname,Lname,CardNo,ExpiryDate,CVV,BillingAddr) values(@Fname,@Lname,@CardNo,@ExpiryDate,@CVV,@BillingAddr)", con);
            cmd.Parameters.AddWithValue("@Fname",TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
            cmd.Parameters.AddWithValue("@CVV", TextBox5.Text);
            cmd.Parameters.AddWithValue("@BillingAddr", TextBox6.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Payment Made Successfully...')</script>");
            Session["address"] = TextBox6.Text;
            Response.Redirect("Pdf_generate.aspx");
        }
    }
}