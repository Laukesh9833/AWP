using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace PracticalQuestion
{
    public partial class _1__1_ShowData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                string path = ConfigurationManager.ConnectionStrings["mycol"].ToString();
                SqlConnection con = new SqlConnection(path);
                con.Open();
                string query = "select * from student";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                
                con.Close();
            } catch (Exception ex) {
                Response.Write(ex.Message);
            }
        }
    }
}