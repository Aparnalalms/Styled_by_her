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
    public partial class admincategorypage : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/categoryimages/" + categoryfileUpload.FileName;
            categoryfileUpload.SaveAs(MapPath(path));


            string c1 = $"insert into category values('{categorynametextbox.Text}','{path}','{categorydescriptiontextbox.Text}','Available')";
            int cat = ob.fn_exenon(c1);
            if(cat==1)
            {
                Label4.Visible = true;
                Label4.Text = "Category is Added";
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "Category is not Added";
            }
        }
    }
}