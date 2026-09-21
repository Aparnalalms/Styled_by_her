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
    public partial class userhomepage : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        SqlConnection con = new SqlConnection(@"server=APARNA\SQLEXPRESS;database=project1;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string s= $"select * from category Where Cat_Status='Available'";
                DataSet ds = ob.fn_dataset(s);
                DataListcategoryview.DataSource = ds;
                DataListcategoryview.DataBind();

            }
        }

       

        protected void ImageButton1_Command1(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["cat_id"] = id;
            Response.Redirect("viewallproduct.aspx");
        }
    }
}