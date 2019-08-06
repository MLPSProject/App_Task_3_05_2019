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
    public partial class Asp_Shopping_DetailsPage : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlCommand cmdObj = null;
        SqlDataReader reader = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            cmdObj = new SqlCommand("Select * from ProductDetails where iProductId=@id", conObj);
            cmdObj.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            conObj.Open();

            reader = cmdObj.ExecuteReader();
            reader.Read();
            imgProductImage.ImageUrl = "GetImage.aspx?id=" + Request.QueryString["id"].ToString();
            lblProductName.Text = reader["vProductName"].ToString();
            lblDescription.Text = reader["vDescription"].ToString();
            lblCategory.Text = reader["vCategory"].ToString();
            lblPrice.Text = reader["mMoney"].ToString();
            lblQuantity.Text = reader["iQuantity"].ToString();
        }
    }
}