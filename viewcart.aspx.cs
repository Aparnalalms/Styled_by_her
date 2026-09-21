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
    public partial class viewcart : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        SqlConnection con = new SqlConnection(@"server=APARNA\SQLEXPRESS;database=project1;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                displaygrid();


            }
        }
        public void displaygrid()
        {

            string s = $"SELECT dbo.Products.Products_id,dbo.Products.Products_Title, dbo.Products.Products_Photo,dbo.Products.Products_Price,dbo.cart.Cart_id, dbo.cart.Quantity, dbo.cart.Sub_total  FROM dbo.Products INNER JOIN dbo.cart ON dbo.Products.Products_id = dbo.cart.Products_id where dbo.cart.Userid = {Session["uid"]} and dbo.cart.Status = 1";
            DataSet ds = ob.fn_dataset(s);
            GridViewviewcart.DataSource = ds;
            GridViewviewcart.DataBind();

        }
        protected void GridViewviewcart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridViewviewcart.DataKeys[i].Value);
            string d = $"delete from cart where Cart_id={getid}";
            int dl = ob.fn_exenon(d);
            displaygrid();




        }

        protected void GridViewviewcart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewviewcart.EditIndex = -1;
            displaygrid();

        }

        protected void GridViewviewcart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewviewcart.EditIndex = e.NewEditIndex;
            displaygrid();

        }

        protected void GridViewviewcart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridViewviewcart.DataKeys[i].Value);

            TextBox txtquantity = (TextBox)GridViewviewcart.Rows[i].Cells[2].Controls[0];

            string r = $"SELECT dbo.Products.Products_id FROM dbo.Cart INNER JOIN dbo.Products ON dbo.Cart.Products_id = dbo.Products.Products_id where dbo.Cart.Userid={Session["uid"]} and dbo.Cart.Status=1";
            string x = ob.fn_exescal(r);

            string h = $"select Products_Price from Products where Products_id={x}";
            string b = ob.fn_exescal(h);

            int calc = Convert.ToInt32(txtquantity.Text) * Convert.ToInt32(b);

            string d = $"update cart set Quantity={txtquantity.Text}, Sub_total={calc} where Cart_id={getid}";
            int dl = ob.fn_exenon(d);

            GridViewviewcart.EditIndex = -1;
            displaygrid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = $"select Products_id from cart where Userid={Session["uid"]} and Status=1";
            SqlDataReader dr = ob.fn_exereader(s);
            List<int> productlist = new List<int>();
            while(dr.Read())
            {
                productlist.Add(Convert.ToInt32(dr["Products_id"]));
            }
            foreach (int pid in productlist)
            {
                string s2 = $"select Quantity,Sub_total from cart where Products_id={pid} and Userid={Session["uid"]}";

                SqlDataReader dr1 = ob.fn_exereader(s2);

                int qun = 0, subtot = 0;

                while (dr1.Read())
                {
                    qun = Convert.ToInt32(dr1["Quantity"]);
                    subtot = Convert.ToInt32(dr1["Sub_total"]);
                }

                string q1 = $"insert into orders values({pid},{Session["uid"]},{qun},{subtot},'order',GETDATE())";

                int l = ob.fn_exenon(q1);

                string q2 = $"update cart set Status=0 where Products_id={pid} and Userid={Session["uid"]} and Status=1";

                int m = ob.fn_exenon(q2);
            }

            string r = $"select sum(Sub_total) from Orders where Userid={Session["uid"]} and Order_status='order'";

            string g = ob.fn_exescal(r);

            int grandtot = Convert.ToInt32(g);
            Session["gt"] = grandtot;

            string r2 = $"insert into bill values({Session["uid"]},{grandtot},GETDATE())";

            int lo = ob.fn_exenon(r2);

            Response.Redirect("viewbill.aspx");
        }
    }
}
