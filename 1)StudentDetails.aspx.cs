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
    public partial class _1_StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                

                string path = ConfigurationManager.ConnectionStrings["mycol"].ToString();
                SqlConnection con = new SqlConnection(path);
                con.Open();
                int rno = Convert.ToInt32(txt1.Text);
                string name = txt2.Text;
                string cls = txt3.Text;
                int pno = Convert.ToInt32(txt4.Text);
                string mail = txt5.Text;
                string query = "insert into student values(" + rno + ",'" + name + "','" + cls + "'," + pno + ",'" + mail + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("Successfully Added........");
                con.Close();
                

            }
            catch (Exception ex) {
                Response.Write(ex.Message);
            }
        }
    }
}