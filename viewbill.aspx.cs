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
    public partial class viewbill : System.Web.UI.Page
    {
        Connectionclass co = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = $"SELECT " +
                           $"dbo.Products.Products_id, " +
                           $"dbo.Products.Products_Title, " +
                           $"dbo.Orders.Order_id, " +
                           $"dbo.Orders.Quantity, " +
                           $"dbo.Orders.Sub_total " +
                           $"FROM dbo.Orders " +
                           $"INNER JOIN dbo.Products " +
                           $"ON dbo.Orders.Products_id = dbo.Products.Products_id " +
                           $"WHERE dbo.Orders.Userid = {Session["uid"]} " +
                           $"AND dbo.Orders.Order_id >= " +
                           $"(SELECT MAX(Order_id) - 2 FROM dbo.Orders WHERE Userid = {Session["uid"]}) " +
                           $"AND dbo.Orders.Order_id <= " +
                           $"(SELECT MAX(Order_id) FROM dbo.Orders WHERE Userid = {Session["uid"]})";

                DataSet ds = co.fn_dataset(s);
                GridView1.DataSource = ds;
                GridView1.DataBind();


                string s2 = $"select Users_name, Users_Phone, Users_Address " +
                            $"from Users1 where Users_Id={Session["uid"]}";

                SqlDataReader dr = co.fn_exereader(s2);

                while (dr.Read())
                {
                    Label1.Text = dr["Users_name"].ToString();
                    Label2.Text = dr["Users_Address"].ToString();
                    Label3.Text = dr["Users_Phone"].ToString();
                }


                string s3 = $"SELECT Bill_date, Total_amount " +
                            $"FROM bill " +
                            $"WHERE Bill_Id=(select max(Bill_id) from bill)";

                SqlDataReader dr1 = co.fn_exereader(s3);

                while (dr1.Read())
                {
                    Label4.Text = dr1["Bill_date"].ToString();
                    Label5.Text = dr1["Total_amount"].ToString();
                }
            }
        }
    }
}