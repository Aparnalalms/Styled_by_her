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
    public partial class adminregg : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string se = "select Max(Reg_id) from login";
            string maxregid = ob.fn_exescal(se);
            int regid = 0;
            if (maxregid == "")
            {
                regid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                regid = newregid + 1;
            }


            string s = $"insert into Admin1 values({regid},'{adminTextBox1.Text}','{adminTextBox2.Text}','{adminTextBox3.Text}','{adminTextBox4.Text}','{adminTextBox5.Text}','active')";
            int i = ob.fn_exenon(s);
            if (i == 1)
            {
                string sl = $"insert into login values({regid},'{adminTextBox4.Text}','{adminTextBox5.Text}','Admin')";
                int j = ob.fn_exenon(sl);
                if (i == 1 && j == 1)
                {
                    Label7.Visible = true;
                    Label7.Text = "Succesfully Registered";
                }
                else
                {
                    Label7.Visible = true; 
                    Label7.Text = "Registration Failed";
                }

            }

        }
    }
}