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
    public partial class adminproductpage : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(@"server=APARNA\SQLEXPRESS;database=project1;Integrated Security=true");
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string s = $"select Cat_id,Cat_name from category";
                DataSet ds = ob.fn_dataset(s);
                productDropDownList.DataSource = ds;
                productDropDownList.DataTextField ="Cat_name";
                productDropDownList.DataValueField = "Cat_id";
                productDropDownList.DataBind();
                productDropDownList.Items.Insert(0, "--Select--");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/productimages/" + productimagefileupload.FileName;
            productimagefileupload.SaveAs(MapPath(path));
            string s1 = $"insert into Products values('{productDropDownList.SelectedItem.Value}','{adminproductnametextbox.Text}','{path}','{adminproductdestextbox.Text}',{adminproductpricetextbox.Text},'Available',{adminprodstocktextbox.Text})";
            int cat = ob.fn_exenon(s1);
            if (cat == 1)
            {
                Label7.Visible = true;
                Label7.Text = "Product is Added";
            }
            else
            {
                Label7.Visible = true;
                Label7.Text = "Product is not Added";
            }
        }
    }
}
