using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace trail2
{
    public class Connectionclass
    {
        SqlCommand cmd;
        SqlConnection con;
        public Connectionclass()
        {
            con = new SqlConnection(@"server=APARNA\SQLEXPRESS;database=project1;Integrated Security=True");
        }

        public int fn_exenon(string q)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(q,con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string fn_exescal(string q)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(q, con);
            con.Open();
            string j = cmd.ExecuteScalar().ToString();
            con.Close();
            return j;
        }
        public SqlDataReader fn_exereader(string q)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(q, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet fn_dataset(string q)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
    }
}