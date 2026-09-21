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
    public partial class paymentpage : System.Web.UI.Page
    { Connectionclass ob1 = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnPayment_Click(object sender, EventArgs e)
        {
            paymentReference.ServiceClient ob = new paymentReference.ServiceClient();
            string bal = ob.checkbalance(TextBox1.Text);
            int b = Convert.ToInt32(bal);
            int g = Convert.ToInt32(Session["gt"]);
            if (b>g)
            {
                int amount = b -g;
                //Response.Write(amount);
                string s = $"Update Account set Bal_amount={amount} where Userid={Session["uid"] } and Account_no={TextBox1.Text}";
                ob1.fn_exenon(s);
                Label2.Text = "Payment Successfull";
                Label2.Visible = true;


                //order update
                string c= $"select Products_id from Orders where Userid ={Session["uid"]}  and  Order_status = 'order'";
                SqlDataReader dr = ob1.fn_exereader(c);
                List<int> pl = new List<int>();
                while (dr.Read())
                {
                    pl.Add(Convert.ToInt32(dr["Products_id"]));
                }
                foreach(int pid in pl)
                {
                    string st = $"update orders set Order_status='paid' where Userid={Session["uid"]} and Order_status='order' and Products_id={pid}";
                    ob1.fn_exenon(st);
                    string r=$"select Products_Stock from Products where Products_id={pid}";
                    string rl = ob1.fn_exescal(r);
                    int oldstock = Convert.ToInt32(rl);
                    string q=$"select Quantity from Orders where Userid={Session["uid"]} and Order_status='paid' and Products_id={pid}";
                    string ql = ob1.fn_exescal(q);
                    int quant = Convert.ToInt32(ql);
                    int newstock = oldstock - quant;
                        string po=$"update Products set  Products_Stock={newstock} where Products_id={pid}";
                    ob1.fn_exenon(po);
                }
               
            }
            else
            {
                Label1.Visible = true;
            }
          
        }
    }
}