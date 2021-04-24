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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-3U665T1; Initial Catalog=ShopBakery; Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Register"+"(fname,lname,email,gender,address,phone,password) values(@fname,@lname,@email,@gender,@address,@phone,@password)",conn);
            cmd.Parameters.AddWithValue("@fname",TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname",TextBox2.Text);
            cmd.Parameters.AddWithValue("@email",TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender",DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@address",TextBox4.Text);
            cmd.Parameters.AddWithValue("@phone",TextBox5.Text);
            cmd.Parameters.AddWithValue("@password",TextBox6.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text="Registration Successfully";
        }
    }
}