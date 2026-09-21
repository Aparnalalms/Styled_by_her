using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace trail2
{
    public partial class feedbackpage : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString("yyyy-MM-dd");
            string s = $"insert into feedback values({Session["uid"]},{Session["product_id"]},'{txtFeedback.Text}','Unreplied','Active','{date}')";
           int i= ob.fn_exenon(s);
            if (i == 1)
            {
                Label1.Visible = true;           
            }
        }
    }
}