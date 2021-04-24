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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-3U665T1; Initial Catalog=ShopBakery; Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("select * from Register where Email='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'",conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (TextBox1.Text=="admin@gmail.com" & TextBox2.Text=="123")
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("AdminHome.aspx");
                //Label1.Text = "Admin Login Succesfull";
                //Label1.ForeColor = System.Drawing.Color.DarkGreen;
                //Button1.Visible = false;
            }
            else if(dt.Rows.Count==1)
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
                Label1.Text = "Login Successfull";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Login Failed";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}