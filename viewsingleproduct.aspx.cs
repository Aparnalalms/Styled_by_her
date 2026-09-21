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
    public partial class viewsingleproduct : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        SqlConnection con = new SqlConnection(@"server=APARNA\SQLEXPRESS;database=project1;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
             if(!IsPostBack)
            {
                int pid = Convert.ToInt32(Session["product_id"]);
                string s = $"select * from Products where Products_id={pid} and Products_Status='Available'";
                SqlDataReader dr = ob.fn_exereader(s);
                while(dr.Read())
                {
                    Image1.ImageUrl = dr["Products_Photo"].ToString();
                    Label1.Text = dr["Products_Title"].ToString();
                    Label2.Text = dr["Products_Description"].ToString();
                    Label3.Text = dr["Products_Price"].ToString();
                }
                string st = $"select products_Stock from Products  where  Products_id={pid}";
                string v = ob.fn_exescal(st);
                int f = Convert.ToInt32(v);
                for (int i = 1; i <= f; i++)
                {
                    DropDownListproductquantity.Items.Add(i.ToString());
                }
            }    

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListproductquantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownListproductquantity.SelectedItem.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int subt = Convert.ToInt32(DropDownListproductquantity.SelectedItem.Value) * Convert.ToInt32(Label3.Text);
            //Response.Write("Pro_Id="+Session["product_id"]);
            //Response.Write("User_Id="+Session["uid"]);
            //Response.Write("Quantity="+DropDownListproductquantity.SelectedItem.Value);
            //Response.Write("Sub Total="+subt);
            string b = $"insert into cart values({Session["product_id"]},{Session["uid"]},{DropDownListproductquantity.SelectedItem.Value},{subt},{1})";
            int val = ob.fn_exenon(b);
            if (val == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Item Added";
            }

        }
    }
}