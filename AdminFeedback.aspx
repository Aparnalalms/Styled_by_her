<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminFeedback.aspx.cs"
    Inherits="trail2.AdminFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>COLOSHOP - Customer Feedback</title>

    <meta charset="utf-8" />

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0" />

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #fff5f5;
            color: #222;
        }

        /* HEADER */

        .header {
            height: 60px;
            background: #ffffff;
            display: flex;
            align-items: center;
            padding: 0 35px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        }

        .logo {
            font-size: 25px;
            font-weight: 800;
        }

        .logo span {
            color: #D32F2F;
        }

        /* MAIN */

        .main-container {
            max-width: 1150px;
            margin: auto;
            padding: 30px 20px;
        }

        /* TITLE */

        .title-section {
            text-align: center;
            margin-bottom: 25px;
        }

        .title-icon {
            width: 50px;
            height: 50px;
            margin: 0 auto 8px;
            border-radius: 50%;
            background: #ffe5e5;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
        }

        .page-title {
            margin: 0;
            font-size: 28px;
            font-weight: 750;
        }

        .red-line {
            width: 45px;
            height: 4px;
            background: #D32F2F;
            border-radius: 10px;
            margin: 8px auto;
        }

        .page-description {
            color: #888;
            font-size: 14px;
            margin: 0;
        }

        /* GRIDVIEW */

        .feedback-container {
            background: white;
            border-radius: 12px;
            padding: 18px;
            box-shadow: 0 5px 18px rgba(0,0,0,0.08);
            overflow-x: auto;
            border-top: 4px solid #D32F2F;
        }

        .feedback-grid {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .feedback-grid th {
            background: #D32F2F;
            color: white;
            padding: 13px 10px;
            text-align: center;
            font-weight: 700;
            border: none;
        }

        .feedback-grid td {
            padding: 12px 10px;
            border-bottom: 1px solid #eeeeee;
            text-align: center;
            vertical-align: middle;
        }

        .feedback-grid tr:nth-child(even) {
            background: #fff8f8;
        }

        .feedback-grid tr:hover {
            background: #ffeaea;
        }

        .feedback-text {
            text-align: left !important;
            max-width: 400px;
            word-wrap: break-word;
        }

        /* REPLY BUTTON */

        .reply-button {
            background: #D32F2F;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 6px;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
        }

        .reply-button:hover {
            background: #B71C1C;
        }

        /* REPLY PANEL */

        .reply-panel {
            margin-top: 30px;
        }

        .reply-box {
            background: white;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 5px 18px rgba(0,0,0,0.08);
            border-top: 4px solid #D32F2F;
        }

        .reply-header {
            margin-bottom: 25px;
        }

        .reply-header h2 {
            margin: 0 0 6px 0;
            font-size: 21px;
        }

        .reply-header p {
            margin: 0;
            color: #888;
            font-size: 13px;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            margin-bottom: 7px;
            font-size: 13px;
            font-weight: 700;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 11px 13px;
            border: 1px solid #ddd;
            border-radius: 7px;
            font-family: 'Segoe UI', Arial, sans-serif;
            font-size: 13px;
            outline: none;
        }

        .form-control:focus {
            border-color: #D32F2F;
        }

        .feedback-display {
            background: #fff8f8;
            border: 1px solid #f0d0d0;
            padding: 12px;
            border-radius: 7px;
            color: #555;
            font-size: 13px;
        }

        .feedback-display textarea {
            background: transparent;
            border: none;
            resize: none;
        }

        .answer-box {
            min-height: 120px;
            resize: vertical;
        }

        .send-button {
            background: #dc2626;
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .send-button:hover {
            background: #b91c1c;
            transform: translateY(-2px);
        }

        .cancel-button {
            background: #777;
            color: white;
            border: none;
            padding: 12px 22px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            margin-right: 10px;
        }

        .reply-actions {
            margin-top: 20px;
            display: flex;
            justify-content: flex-end;
        }

        /* MESSAGE */

        .message {
            display: block;
            text-align: center;
            margin: 15px 0;
            font-weight: 600;
            font-size: 13px;
        }

        /* BACK BUTTON */

        .back-button {
            display: inline-block;
            margin-top: 18px;
            padding: 9px 20px;
            background: #D32F2F;
            color: white;
            text-decoration: none;
            border-radius: 7px;
            font-size: 12px;
            font-weight: 700;
        }

        .back-button:hover {
            background: #B71C1C;
        }

        /* FOOTER */

        .footer {
            text-align: center;
            padding: 20px;
            color: #999;
            font-size: 12px;
        }

        /* MOBILE */

        @media screen and (max-width: 700px) {

            .header {
                padding: 0 20px;
            }

            .main-container {
                padding: 25px 12px;
            }

            .page-title {
                font-size: 24px;
            }

            .feedback-container {
                padding: 10px;
            }

            .reply-box {
                padding: 18px;
            }

            .reply-actions {
                flex-direction: column;
            }

            .cancel-button {
                margin-right: 0;
                margin-bottom: 10px;
            }

            .send-button,
            .cancel-button {
                width: 100%;
            }
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <!-- HEADER -->

    <div class="header">

        <div class="logo">
            COLO<span>SHOP</span>
        </div>

    </div>


    <!-- MAIN -->

    <div class="main-container">

        <!-- TITLE -->

        <div class="title-section">

            <div class="title-icon">
                💬
            </div>

            <h1 class="page-title">
                Customer Feedback
            </h1>

            <div class="red-line"></div>

            <p class="page-description">
                View feedback submitted by customers
            </p>

        </div>


        <!-- MESSAGE -->

        <asp:Label
            ID="lblMessage"
            runat="server"
            CssClass="message">
        </asp:Label>


        <!-- GRIDVIEW -->

        <div class="feedback-container">

            <asp:GridView
                ID="GridView1"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="feedback-grid"
                GridLines="None"
                EmptyDataText="No customer feedback available."
                OnRowCommand="GridView1_RowCommand">

                <Columns>

                    <asp:BoundField
                        DataField="Products_id"
                        HeaderText="Product ID" />

                    <asp:BoundField
                        DataField="Users_Name"
                        HeaderText="User Name" />

                    <asp:BoundField
                        DataField="Feedback_message"
                        HeaderText="Customer Feedback"
                        ItemStyle-CssClass="feedback-text" />

                    <asp:BoundField
                        DataField="Users_Email"
                        HeaderText="Email" />

                    <asp:BoundField
                        DataField="Feedback_date"
                        HeaderText="Date" />

                    <asp:TemplateField HeaderText="Reply">

                        <ItemTemplate>

                            <asp:Button
                                ID="btnReply"
                                runat="server"
                                Text="Reply"
                                CssClass="reply-button"
                                CommandName="ReplyFeedback"
                                CommandArgument='<%# Eval("Users_Id") %>' />

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:LinkButton
                ID="btnBack"
                runat="server"
                CssClass="back-button"
                PostBackUrl="~/adminhomepage.aspx">

                ← BACK TO DASHBOARD

            </asp:LinkButton>

        </div>


        <!-- REPLY PANEL -->

        <asp:Panel
            ID="Panel1"
            runat="server"
            Visible="False"
            CssClass="reply-panel">

            <div class="reply-box">

                <!-- REPLY HEADER -->

                <div class="reply-header">

                    <h2>
                        ✉ Reply to Customer
                    </h2>

                    <p>
                        Respond to the feedback received from the customer.
                    </p>

                </div>


                <!-- CUSTOMER EMAIL -->

                <div class="form-group">

                    <asp:Label
                        ID="Label1"
                        runat="server"
                        Text="To:">
                    </asp:Label>

                    <asp:TextBox
                        ID="txtToEmail"
                        runat="server"
                        CssClass="form-control"
                        ReadOnly="true">
                    </asp:TextBox>

                </div>


                <!-- CUSTOMER FEEDBACK -->


                <!-- ADMIN RESPONSE -->

                <div class="form-group">

                    <asp:Label
                        ID="Label3"
                        runat="server"
                        Text="Your Response:">
                    </asp:Label>

                    <asp:TextBox
                        ID="TextBox8"
                        runat="server"
                        CssClass="form-control answer-box"
                        TextMode="MultiLine"
                        placeholder="Write your response to the customer..."></asp:TextBox>

                </div>


                <!-- HIDDEN USER ID -->

                <asp:HiddenField
                    ID="hiddenUserId"
                    runat="server" />


                <!-- BUTTONS -->

                <div class="reply-actions">

                    <asp:Button
                        ID="btnCancel"
                        runat="server"
                        Text="CANCEL"
                        CssClass="cancel-button"
                        CausesValidation="false"
                        OnClick="btnCancel_Click" />

                    <asp:Button
                        ID="btnSend"
                        runat="server"
                        Text="SEND RESPONSE"
                        CssClass="send-button"
                        OnClick="btnSend_Click" />

                </div>

            </div>

        </asp:Panel>


        <!-- BACK BUTTON -->

        <div style="text-align:center;">

        </div>

    </div>


    <!-- FOOTER -->

    <div class="footer">

        COLOSHOP © 2026

    TER -->

    <div class="footer">

        COLOSHOP © 2026

    </div>

</form>

</body>

</html>