using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Asp_shopping_websiteDesign
{
    public partial class Asp_Shopping_HomePage : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlDataAdapter adapter = null;
        DataSet ds = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getId();
                Session["User"] = Request.QueryString["Cid"];
            }

        }

        public void getId()
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            adapter = new SqlDataAdapter("select * from ProductDetails",conObj);
            ds = new DataSet();

            adapter.Fill(ds, "ProductDetails");

            dlHomePage.DataSource = ds.Tables["ProductDetails"];
            dlHomePage.DataBind();
        }

        protected void dlHomePage_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Details")
            {
                Response.Redirect("Asp_Shopping_DetailsPage.aspx?id=" + e.CommandArgument);                
            }
            else if(e.CommandName == "BuyNow")
            {
                if (string.IsNullOrEmpty(Session["User"] as string))
                {
                    Response.Redirect("Asp_Shoping_LoginPage.aspx");
                }
                else
                {
                    Response.Redirect(String.Format("Asp_shopping_Order.aspx?id={0}&Cid={1}",e.CommandArgument,Request.QueryString["Cid"].ToString()));
                }
            }
        }

        protected void dlHomePage_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}