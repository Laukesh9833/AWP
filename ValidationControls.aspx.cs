using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticalQuestion
{
    public partial class ValidationControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txt6_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int index = DropDownList1.SelectedIndex;
            if (index == 0)
            {
                CustomValidator1.ErrorMessage = "please select your country";
            }
            else {
                lbl1.Text = "selected country is " + DropDownList1.SelectedItem.ToString();
            }
        }
    }
}