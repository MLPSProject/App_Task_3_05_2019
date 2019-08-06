using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Asp_shopping_websiteDesign
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private SqlConnection conObj = null;

        private SqlCommand cmdObj = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void BTN_Click(object sender, EventArgs e)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            cmdObj = new SqlCommand("stpProductDetails", conObj);
            cmdObj.CommandType = CommandType.StoredProcedure;
            int length = FUP1.PostedFile.ContentLength;
            byte[] a = new byte[length];
            FUP1.PostedFile.InputStream.Read(a, 0, length);
            cmdObj.Parameters.AddWithValue("@pProductName", txtPN.Text);
            cmdObj.Parameters.AddWithValue("@pCategory ", txtCY.Text);
            cmdObj.Parameters.AddWithValue("@pDescription", txtDN.Text);
            cmdObj.Parameters.AddWithValue("@pMoney", txtMY.Text);
            cmdObj.Parameters.AddWithValue("@pQuantity", txtQY.Text);
            cmdObj.Parameters.AddWithValue("@pImage", a);
            conObj.Open();
            var RES = cmdObj.ExecuteNonQuery();
            if (RES > 0)
            {
                lbl1.Text = "New Product Added";
            }
            else
            {
                lbl1.Text = "Not created";
            }
            conObj.Close();

        }
    }
}

































