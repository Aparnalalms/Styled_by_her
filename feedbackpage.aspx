<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbackpage.aspx.cs" Inherits="trail2.feedbackpage" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Give Feedback</title>

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #ffe5e5, #ffffff, #fff0f0);
            min-height: 100vh;
        }

        /* Main container */
        .main-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        /* Feedback Card */
        .feedback-card {
            width: 560px;
            background-color: white;
            border-radius: 22px;
            padding: 40px 45px;
            box-shadow: 0px 12px 35px rgba(0, 0, 0, 0.15);
            border-top: 6px solid #E53935;
        }

        /* Heading */
        .heading {
            text-align: center;
            margin-bottom: 8px;
            color: #222222;
            font-size: 32px;
            font-weight: 700;
        }

        .sub-heading {
            text-align: center;
            color: #777777;
            font-size: 15px;
            margin-bottom: 30px;
        }

        /* Decorative line */
        .red-line {
            width: 65px;
            height: 5px;
            background-color: #E53935;
            border-radius: 10px;
            margin: 12px auto 28px auto;
        }

        /* Form group */
        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            margin-bottom: 8px;
            font-size: 15px;
            font-weight: 600;
            color: #333333;
        }

        /* Text boxes */
        .input-box {
            width: 100%;
            height: 46px;
            padding: 10px 14px;
            border: 1px solid #dddddd;
            border-radius: 10px;
            font-size: 15px;
            outline: none;
            background-color: #fffafa;
            transition: 0.3s;
        }

        .input-box:focus {
            border-color: #E53935;
            box-shadow: 0px 0px 0px 3px rgba(229, 57, 53, 0.15);
            background-color: white;
        }

        /* Date */
        .date-box {
            width: 100%;
            height: 46px;
            padding: 10px 14px;
            border: 1px solid #dddddd;
            border-radius: 10px;
            font-size: 15px;
            background-color: #fffafa;
            outline: none;
        }

        .date-box:focus {
            border-color: #E53935;
            box-shadow: 0px 0px 0px 3px rgba(229, 57, 53, 0.15);
        }

        /* Feedback textarea */
        .feedback-box {
            width: 100%;
            height: 130px;
            padding: 14px;
            border: 1px solid #dddddd;
            border-radius: 12px;
            font-family: 'Segoe UI', Arial, sans-serif;
            font-size: 15px;
            resize: vertical;
            outline: none;
            background-color: #fffafa;
        }

        .feedback-box:focus {
            border-color: #E53935;
            box-shadow: 0px 0px 0px 3px rgba(229, 57, 53, 0.15);
            background-color: white;
        }

        /* Submit button */
        .submit-button {
            width: 100%;
            height: 50px;
            border: none;
            border-radius: 12px;
            background: linear-gradient(90deg, #E53935, #C62828);
            color: white;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            margin-top: 8px;
            box-shadow: 0px 5px 12px rgba(198, 40, 40, 0.30);
            transition: 0.3s;
        }

        .submit-button:hover {
            transform: translateY(-2px);
            box-shadow: 0px 8px 18px rgba(198, 40, 40, 0.40);
        }

        /* Cancel button */
        .cancel-button {
            width: 100%;
            height: 45px;
            border: 1px solid #dddddd;
            border-radius: 12px;
            background-color: white;
            color: #555555;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 12px;
            transition: 0.3s;
        }

        .cancel-button:hover {
            background-color: #fff5f5;
            border-color: #E53935;
            color: #C62828;
        }

        /* Icon */
        .icon-circle {
            width: 55px;
            height: 55px;
            border-radius: 50%;
            background: linear-gradient(135deg, #E53935, #C62828);
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 15px auto;
            font-size: 27px;
            box-shadow: 0px 5px 15px rgba(198, 40, 40, 0.25);
        }

        /* Footer text */
        .footer-text {
            text-align: center;
            margin-top: 22px;
            color: #999999;
            font-size: 13px;
        }

        /* Responsive */
        @media screen and (max-width: 600px) {

            .feedback-card {
                width: 100%;
                padding: 30px 25px;
            }

            .heading {
                font-size: 27px;
            }

        }

        .error-label {
            display: block;
            color: #D32F2F;
            font-size: 14px;
            margin-top: 7px;
            font-weight: bold;
        }

        .auto-style1 {
            display: block;
            color: #D32F2F;
            font-size: 14px;
            margin-top: 7px;
            font-weight: bold;
            margin-left: 140px;
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="main-container">

            <div class="feedback-card">

                <!-- Icon -->
                <div class="icon-circle">
                    💬
                </div>

                <!-- Heading -->
                <div class="heading">
                    Share Your Feedback
                </div>

                <div class="red-line"></div>

                <div class="sub-heading">
                    We would love to hear your thoughts and suggestions.
                </div>


                <!-- Username -->


                <!-- Email -->


                <!-- Date -->


                <!-- Feedback -->
                <div class="form-group">

                    <asp:Label ID="lblFeedback"
                        runat="server"
                        Text="Your Feedback"
                        CssClass="form-label">
                    </asp:Label>

                    <asp:TextBox ID="txtFeedback"
                        runat="server"
                        CssClass="feedback-box"
                        TextMode="MultiLine"
                        placeholder="Tell us about your experience...">
                    </asp:TextBox>

                </div>


                <!-- Submit -->
                <asp:Button ID="btnSubmit"
                    runat="server"
                    Text="SUBMIT FEEDBACK"
                    CssClass="submit-button"
                    OnClick="btnSubmit_Click" />


                <!-- Cancel -->
                <asp:Button ID="btnCancel"
                    runat="server"
                    Text="CANCEL"
                    CssClass="cancel-button"
                    PostBackUrl="~/userhomepage.aspx" />


                <asp:Label ID="Label1"
                    runat="server"
                    CssClass="auto-style1"
                    Visible="False" Font-Italic="True">
     Your feedback has been submitted successfully❤️       </asp:Label>


                <div class="footer-text">
                    ❤️ Thank you for helping us improve!
                </div>

            </div>

        </div>

    </form>

</body>
</html>