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
    public partial class GetImage : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlCommand cmdObj = null;
        SqlDataReader reader = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgprocess();
        }

        public void imgprocess()
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            cmdObj = new SqlCommand("select vImage from ProductDetails where iProductId=@pProductId", conObj);

            cmdObj.Parameters.AddWithValue("@pProductId", Request.QueryString["Id"]);

            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }

            reader = cmdObj.ExecuteReader();

            if (reader.Read())
            {
                byte[] imgdata = ((byte[])reader["vImage"]);
                Response.BinaryWrite(imgdata);
            }
            conObj.Close();
        } 
    }
}