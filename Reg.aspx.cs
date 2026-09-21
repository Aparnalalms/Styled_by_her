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
    public partial class Reg : System.Web.UI.Page
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


            string s = $"insert into Users1 values({regid},'{TextBox1.Text}',{TextBox2.Text},{TextBox3.Text},'{TextBox4.Text}','{TextBox5.Text}',{TextBox6.Text},'{TextBox7.Text}','{TextBox8.Text}','active')";
            int i = ob.fn_exenon(s);
            if (i == 1)
            {
                string sl = $"insert into login values({regid},'{TextBox7.Text}','{TextBox8.Text}','user')";
                int j = ob.fn_exenon(sl);
                if (i == 1 && j == 1)
                {
                    Label10.Visible = true;
                    Label10.Text = "Succesfully Registered";
                }
                else
                {
                    Label10.Visible = true;
                    Label10.Text = "Registration Failed";
                }

            }


        }
    }
}