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
    public partial class login1 : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            string str = $"select count(Reg_id) from login where username='{loginTextBox1.Text}' and password='{loginTextBox2.Text}'";
            string i = ob.fn_exescal(str);

            if (i == "1")
            {
                string str1 = $"select Reg_id from login where username='{loginTextBox1.Text}' and password='{loginTextBox2.Text}'";
                string b = ob.fn_exescal(str1);
                Session["uid"] = b;

                string str2 = $"select Login_Type from login where username='{loginTextBox1.Text}' and password='{loginTextBox2.Text}'";
                string logtype = ob.fn_exescal(str2);

                
                if (logtype == "Admin")
                {
                    Response.Redirect("adminhomepage.aspx");
                }
                else if (logtype == "user")
                {
                    string str3 = $"select Users_Status from Users1 where Users_Username='{loginTextBox1.Text}' and Users_Password='{loginTextBox2.Text}'";
                    string l = ob.fn_exescal(str3);

                    if (l == "Active")
                    {
                        Response.Redirect("userhomepage.aspx");
                    }
                    else
                    {
                        Label3.Visible = true;
                        Label3.Text = "You are Blocked by Admin";
                    }
                }
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Invalid username and password";
            }


        }
    }
}