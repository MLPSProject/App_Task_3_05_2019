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
    public partial class Asp_Shopping_RegistrationPage : System.Web.UI.Page
    {

        SqlConnection conObj = null;
        SqlCommand cmdObj = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            cmdObj = new SqlCommand("stpCustomerDetails", conObj);
            cmdObj.CommandType = CommandType.StoredProcedure;

            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }

            cmdObj.Parameters.AddWithValue("@pFirstName",txtFirstName.Text);
            cmdObj.Parameters.AddWithValue("@pLastName",txtLastName.Text);
            cmdObj.Parameters.AddWithValue("@pEmail",txtEmailId.Text);
            cmdObj.Parameters.AddWithValue("@pPassword",txtPassword.Text);
            cmdObj.Parameters.AddWithValue("@pDateOfBirth",dDOB.Text);
            cmdObj.Parameters.AddWithValue("@pMobileNo",txtMobileNo.Text);
            cmdObj.Parameters.AddWithValue("@pAddress",txtAddress.Text);

            int res = cmdObj.ExecuteNonQuery();
            if (res > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration is successfull')", true);

                
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error in a Code..')", true);
            }
        }
    }
}