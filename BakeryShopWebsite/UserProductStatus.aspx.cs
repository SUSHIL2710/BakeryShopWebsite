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
    public partial class UserProductStatus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3U665T1; Initial Catalog=ShopBakery; Integrated Security=True;");
        public int val;
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Status();
                DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void Status()
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            { 
                string status = "";
                string orderId = "";
                string userid = Session["username"].ToString();

                SqlDataAdapter sda = new SqlDataAdapter("select * from OrderDetails", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count==1)
                {
                    orderId=dt.Rows[0][0].ToString();
                    status = dt.Rows[0][8].ToString();
                    lblOrderID.Text=orderId;
                    val=25;
                    SqlDataAdapter sda1=new SqlDataAdapter("Select * from OrderDetails",con);
                    DataTable dt1=new DataTable();
                    sda1.Fill(dt);
                    if(dt1.Rows.Count > 1)
                    {
                        HyperLink1.Visible=true;
                    }
                    else
                    {
                        HyperLink1.Visible=false;
                    }
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
                if (status == "Complete")
                {
                    val = 0;
                    Page.Header.Controls.Add(new System.Web.UI.LiteralControl("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + ResolveUrl("~/Styles/StatusStyle.css") + "\" />"));
                }
            }
        }
    }
}