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
    public partial class DetailsView_FormView : System.Web.UI.Page
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
                string query = "select RollNo from student";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                int count = 0;
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr[0].ToString());
                    count++;
                }
                Response.Write("Total Count is " + count);
                con.Close();
            }
            catch (Exception ex) {
                Response.Write(ex.Message);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string path = ConfigurationManager.ConnectionStrings["mycol"].ToString();
                SqlConnection con = new SqlConnection(path);
                con.Open();
                string roll = DropDownList1.SelectedItem.ToString();
                int rollno = Convert.ToInt32(roll);

                string query = "select * from student where RollNo='"+rollno+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                DetailsView1.DataSource = dr;
                DetailsView1.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}