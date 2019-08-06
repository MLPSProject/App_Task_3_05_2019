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
    public partial class Asp_Shopping_AddProduct : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlCommand cmdObj = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            cmdObj = new SqlCommand("stpProductDetails", conObj);
            cmdObj.CommandType = CommandType.StoredProcedure;

            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }

            int len = fuImage.PostedFile.ContentLength;
            byte[] imgbyte = new byte[len];
            fuImage.PostedFile.InputStream.Read(imgbyte, 0, len);

            cmdObj.Parameters.AddWithValue("@pProductName", txtProductName.Text);
            cmdObj.Parameters.AddWithValue("@pCategory", dpCategory.SelectedItem.Text);
            cmdObj.Parameters.AddWithValue("@pDescription",txtDescription.Text);
            cmdObj.Parameters.AddWithValue("@pMoney",txtPrice.Text);
            cmdObj.Parameters.AddWithValue("@pQuantity", txtQuantity.Text);
            cmdObj.Parameters.AddWithValue("@pImage", imgbyte);

            int res = cmdObj.ExecuteNonQuery();

            if (res > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);

                txtProductName.Text = "";
                dpCategory.ClearSelection();
                txtQuantity.Text = "";
                txtPrice.Text = "";
                txtDescription.Text = "";
                fuImage.Attributes.Clear();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error in a Code..')", true);
            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtProductName.Text = "";
            dpCategory.ClearSelection();
            txtQuantity.Text = "";
            txtPrice.Text = "";
            txtDescription.Text = "";
            fuImage.Attributes.Clear();
        }
    }
}