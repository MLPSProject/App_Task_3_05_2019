using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Asp_shopping_websiteDesign
{
    public partial class Asp_Shoping_LoginPage : System.Web.UI.Page
    {
        SqlConnection conObj = null;
        SqlCommand cmdObj = null;
        SqlDataReader reader = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(txtUserName.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text,true);
            }
            else
            {
                conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
                cmdObj = new SqlCommand("select * from CustomerDetails where vEmailId=@UserName and vPassword=@Password",conObj);
                if (conObj.State == ConnectionState.Closed)
                {
                    conObj.Open();
                }

                cmdObj.Parameters.AddWithValue("@UserName",txtUserName.Text);
                cmdObj.Parameters.AddWithValue("@Password", txtPassword.Text);

                reader = cmdObj.ExecuteReader();
                if (reader.Read())
                {
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login successfull !!!')", true);
                    Response.Redirect("Asp_Shopping_HomePage.aspx?Cid=" + reader["iCustId"].ToString());
                }
                else
                {
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Register On this Site !!!')", true);
                    Response.Redirect("Asp_Shopping_RegistrationPage.aspx");
                }
                    //Response.Redirect("Asp_Shopping_HomePage.aspx");
                    
                
            }
        }
    }
}