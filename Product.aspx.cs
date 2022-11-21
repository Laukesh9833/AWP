using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticalQuestion
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n1 = Convert.ToInt32(txt1.Text);
            int n2 = Convert.ToInt32(txt2.Text);
            int n3 = Convert.ToInt32(txt3.Text);
            int n4 = Convert.ToInt32(txt4.Text);
            lbl1.Text = "Product is" + (n1 * n2 * n3 * n4);
        }
    }
}