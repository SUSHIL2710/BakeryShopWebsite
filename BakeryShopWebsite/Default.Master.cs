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
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Counting No. Of Products Present in Shopping Cart
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label2.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label2.Text = "0";
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1, 5);
            Image2.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddToCart.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if(Session["username"]!= null)
            {
                string userId=Session["username"].ToString();
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-3U665T1; Initial Catalog=ShopBakery; Integrated Security=True;");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Register where email='"+userId+"'",con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count>0)
                {
                    Response.Redirect("UserProductStatus.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");   
            }
        }
    }
}