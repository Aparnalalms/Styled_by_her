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
    public partial class AccountInsert : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string s = $"select count(Account_id) from Account where Userid={Session["uid"]}";
            string c = ob.fn_exescal(s);
            if (Convert.ToInt32(c) >= 1)
            {
                Label1.Visible = true;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = $"insert into Account values({Session["uid"]},'{DropDown1.SelectedItem.Value}', {TextBox1.Text}, {TextBox2.Text})";
            //Response.Write(s);
            int a = ob.fn_exenon(s);
            if (a == 1)
            {
                Response.Redirect("paymentpage.aspx");
            }


            //int a = ob.fn_exenon(s);

            //if (a == 1)
            //{
            //    Response.Redirect("paymentpage.aspx");
            //}
        }
    }
}