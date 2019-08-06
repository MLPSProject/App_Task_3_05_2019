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
    public partial class Asp_shopping_Order : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlCommand cmdObj = null;
        SqlDataReader reader = null;
        SqlConnection conObj1 = null;
        SqlCommand cmdObj1 = null;
        //SqlConnection conObj2 = null;
        SqlCommand cmdObj2 = null;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            cmdObj = new SqlCommand("select * from ProductDetails where iProductId=@pid", conObj);

            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }

            cmdObj.Parameters.AddWithValue("@pid", Request.QueryString["id"]);
            reader = cmdObj.ExecuteReader();
            reader.Read();

            lblCustomer.Text = Request.QueryString["Cid"].ToString();
            lblProductId.Text = Request.QueryString["id"].ToString();
            lblProductName.Text = reader["vProductName"].ToString();
            //Session["TotalPrice"] = null;
            //lblTotalPrice.Text = Session["TotalPrice"].ToString();

            
            
        }

        protected void dpQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                double qty = Convert.ToDouble(dpQuantity.SelectedItem.Value.ToString());
                double price = Convert.ToDouble(reader["mMoney"].ToString());
                double totalprice = qty * price;
                lblTotalPrice.Text = totalprice.ToString();
            
            
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            conObj1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            cmdObj1 = new SqlCommand("stpOrderDetails", conObj1);
            cmdObj1.CommandType = CommandType.StoredProcedure;

            cmdObj1.Parameters.AddWithValue("@pProductid",lblProductId.Text);
            cmdObj1.Parameters.AddWithValue("@pCustomerid", lblCustomer.Text);
            cmdObj1.Parameters.AddWithValue("@pTotalPrice", lblTotalPrice.Text);
            cmdObj1.Parameters.AddWithValue("@pTotalQuantity", dpQuantity.SelectedItem.Value);
            if (conObj1.State == ConnectionState.Closed)
            {
                conObj1.Open();
            }

            int res1 = cmdObj1.ExecuteNonQuery();
            if (res1 > 0)
            {
                //   cmdObj2 = new SqlCommand("update ProductDetails set iQuantity = (iQuantity - @pQuantity) where iProductId = @pProductid", conObj1);
                cmdObj2 = new SqlCommand("stpUpdateOrderDetails", conObj1);
                cmdObj2.CommandType = CommandType.StoredProcedure;

                cmdObj2.Parameters.AddWithValue("@pQuantity", dpQuantity.SelectedItem.Value);
                cmdObj2.Parameters.AddWithValue("@pProductid", lblProductId.Text);

                if (conObj1.State == ConnectionState.Closed)
                {
                    conObj1.Open();
                }
                
                int res2 = cmdObj2.ExecuteNonQuery();
                if (res2 > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Order Successfull !!!')", true);
                }


            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Fail to Place an Order...')", true);
            }

            conObj1.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            lblProductId.Text = "";
            lblCustomer.Text = "";
            lblProductName.Text = "";
            lblTotalPrice.Text = "";
            dpQuantity.ClearSelection();
        }
    }
}