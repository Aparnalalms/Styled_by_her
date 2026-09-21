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
    public partial class editproduct : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"server=APARNA\SQLEXPRESS;database=project1;Integrated Security=true");
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display_grid();
            }

        }
        public void display_grid()
        {
            string s = $"select * from Products";
          
            DataSet ds = ob.fn_dataset(s);
            GridViewproduct.DataSource = ds;
            GridViewproduct.DataBind();
        }
        protected void GridViewproduct_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            

        }

        protected void GridViewproduct_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewproduct.EditIndex = e.NewEditIndex;
            display_grid();

        }

        protected void GridViewproduct_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridViewproduct.EditIndex = -1;
            display_grid();

        }

        protected void GridViewproduct_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridViewproduct.DataKeys[i].Value);
            
            TextBox txtdes = (TextBox)GridViewproduct.Rows[i].Cells[4].Controls[0];
            TextBox txtprice = (TextBox)GridViewproduct.Rows[i].Cells[5].Controls[0];
            TextBox txtstatus = (TextBox)GridViewproduct.Rows[i].Cells[6].Controls[0];
            TextBox txtstock = (TextBox)GridViewproduct.Rows[i].Cells[7].Controls[0];
            FileUpload fu = (FileUpload)GridViewproduct.Rows[i].FindControl("FileUpload1");
            string path = "";
            if (fu.HasFile)
            {
                path = "~/productimages/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            string st = $"update products set Products_Photo='{path}',Products_Description='{txtdes.Text}',Products_Price={txtprice.Text},Products_Status='{txtstatus.Text}',Products_Stock={txtstock.Text} where Products_id={getid}";
            string z = st;
            int l = ob.fn_exenon(st);
            GridViewproduct.EditIndex = -1;
            display_grid();


        }

        protected void GridViewproduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewproduct.PageIndex = e.NewPageIndex;
            display_grid();

        }
    }
}