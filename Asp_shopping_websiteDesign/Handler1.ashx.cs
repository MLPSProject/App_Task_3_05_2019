using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Asp_shopping_websiteDesign
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["id"].ToString();
            SqlConnection conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select vImage from productDetails Where iProductId=@Id", conObj);
            cmd.Parameters.AddWithValue("@Id", id);
            if (conObj.State == ConnectionState.Closed)
            {
                conObj.Open();
            }
            SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            if (rdr.HasRows)
            {
                rdr.Read();
            }
            context.Response.BinaryWrite((byte[])rdr["vImage"]);
            context.Response.End();
            conObj.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}