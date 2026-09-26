using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;


namespace trail2
{
    public partial class AdminFeedback : System.Web.UI.Page
    {
        Connectionclass ob = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "SELECT dbo.Users1.*, dbo.feedback.* FROM dbo.Users1 INNER JOIN dbo.feedback ON dbo.Users1.Users_Id = dbo.feedback.Userid";
                DataSet ds = ob.fn_dataset(s);
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }


        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string toEmail = txtToEmail.Text;
            string answer = TextBox8.Text;

            if (string.IsNullOrWhiteSpace(answer))
            {
                Response.Write(
                    "<script>alert('Please enter your response.');</script>"
                );

                return;
            }


            string subject = "Reply to your  Feedback";


            string body = @"
                <html>
                <body>

                    <h2>Styled By Her</h2>

                    <p>Dear Customer,</p>

                    <p>
                        Thank you for contacting us.
                    </p>

                    <p>" + answer + @"</p>

                    <br />

                    <p>
                        If you have any further questions, please feel free to contact us.
                    </p>

                    <p>
                        Regards,<br />
                        Styled By Her Admin
                    </p>

                </body>
                </html>";


            try
            {
                SendEmail2(
                    "Styled By Her Admin",
                    "aparnalalms@gmail.com",
                    "mxqi dxzb rjkt gotl",
                    "Customer",
                    toEmail,
                    subject,
                    body
                );


                Panel1.Visible = false;

                txtToEmail.Text = "";
                TextBox8.Text = "";


                Response.Write(
                    "<script>alert('Reply sent successfully.');</script>"
                );

                string f = $"update feeback set Replay_message= '{TextBox8}', Feedback_status='inactive' where Userid= {Session["userid"]} and Feedback_status='Active'";
                ob.fn_exenon(f);


            }
            catch (Exception ex)
            {
                Response.Write(
                    "<script>alert('Error sending email: " +
                    ex.Message.Replace("'", "") +
                    "');</script>"
                );
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ReplyFeedback")
            {
                Panel1.Visible = true;

                string userId = e.CommandArgument.ToString();
                Session["userid"] = userId;

                string query = @"SELECT 
                                    Users1.Users_Email,
                                    feedback.feedback_message
                                 FROM Feedback
                                 INNER JOIN Users1
                                 ON feedback.Userid= Users1.Users_Id
                                 WHERE feedback.Userid = " + userId;

                DataSet ds = ob.fn_dataset(query);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtToEmail.Text =
                        ds.Tables[0].Rows[0]["Users_Email"].ToString();

                    TextBox8.Text = "";
                }
            }
        }

        public static void SendEmail2(
            string yourName,
            string yourGmailUserName,
            string yourGmailPassword,
            string toName,
            string toEmail,
            string subject,
            string body)
        {
            string to = toEmail;

            string from = yourGmailUserName;

            MailMessage message = new MailMessage(from, to);


            string mailbody = body;

            message.Subject = subject;

            message.Body = mailbody;

            message.BodyEncoding = Encoding.UTF8;

            message.IsBodyHtml = true;


            // Gmail SMTP
            SmtpClient client =
                new SmtpClient("smtp.gmail.com", 587);


            System.Net.NetworkCredential basicCredential1 =
                new System.Net.NetworkCredential(
                    yourGmailUserName,
                    yourGmailPassword
                );


            client.EnableSsl = true;

            client.UseDefaultCredentials = false;

            client.Credentials = basicCredential1;


            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}