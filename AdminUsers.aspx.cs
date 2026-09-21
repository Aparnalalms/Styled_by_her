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
    public partial class WebForm1 : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
        }
        public void display()
        {
            string r = $"select* from Users1 where Users_Status='Active'";
            DataSet ds = ob.fn_dataset(r);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            int i = Convert.ToInt32(e.CommandArgument);
            string s = $"update Users1 set Users_Status='Block' where Users_Status='Active' and Users_Id={i}";
            ob.fn_exenon(s);
            display();
        }
    }
}