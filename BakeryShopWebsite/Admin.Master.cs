using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakeryShopWebsite
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCategory_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCategory.aspx");
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Product.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProduct.aspx");
        }

        protected void tnOrderDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderDetails.aspx");
        }

        //protected void btnUpdate_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("UpdateProduct.aspx");
        //}
    }
}