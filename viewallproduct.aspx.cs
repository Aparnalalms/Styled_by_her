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
    public partial class viewallproduct : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        SqlConnection con = new SqlConnection(@"server=APARNA\SQLEXPRESS;database=project1;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int catid = Convert.ToInt32(Session["cat_id"]);
                string s=$"select * from Products where Cat_id={catid} and Products_Status='Available'";
                DataSet ds = ob.fn_dataset(s);
                DataListviewproduct.DataSource = ds;
                DataListviewproduct.DataBind();
            }
        }


        protected void DataListviewproduct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["product_id"] = id;
            Response.Redirect("viewsingleproduct.aspx");
        }
    }
}