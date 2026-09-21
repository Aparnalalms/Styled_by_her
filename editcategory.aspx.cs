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
    public partial class editcategory : System.Web.UI.Page
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
            string s = $"select * from category";

            DataSet ds = ob.fn_dataset(s);
            GridViewcategory.DataSource = ds;
            GridViewcategory.DataBind();
        }
        protected void GridViewcategory_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewcategory.EditIndex = -1;
            display_grid();
        }

        protected void GridViewcategory_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridViewcategory.DataKeys[i].Value);

            TextBox txtdes = (TextBox)GridViewcategory.Rows[i].Cells[3].Controls[0];
            TextBox txtstatus = (TextBox)GridViewcategory.Rows[i].Cells[4].Controls[0];
            FileUpload fu = (FileUpload)GridViewcategory.Rows[i].FindControl("FileUpload1");
            string path = "";
            if (fu.HasFile)
            {
                path = "~/categoryimages/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            string st = $"update category set Cat_image='{path}',Cat_description='{txtdes.Text}',Cat_Status='{txtstatus.Text}' where Cat_id={getid}";
            string z = st;
            int l = ob.fn_exenon(st);
            GridViewcategory.EditIndex = -1;
            display_grid();

        }

        protected void GridViewcategory_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewcategory.PageIndex = e.NewPageIndex;
            display_grid();
        }

        protected void GridViewcategory_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewcategory.EditIndex = e.NewEditIndex;
            display_grid();

        }
    }
}