<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentpage.aspx.cs" Inherits="trail2.paymentpage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Payment</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #FFF5F5;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            border-top: 6px solid #C62828;
        }

        h2 {
            text-align: center;
            color: #C62828;
            margin-bottom: 25px;
        }

        .field {
            margin-bottom: 20px;
        }

        .field label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #444;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            outline: none;
        }

        .textbox:focus {
            border-color: #C62828;
            box-shadow: 0 0 4px rgba(198, 40, 40, 0.25);
        }

        .payment-btn {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #C62828;
            color: white;
            text-align: center;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .payment-btn:hover {
            background-color: #8E0000;
        }

        .create-link {
            color: #C62828;
            text-decoration: none;
            font-weight: bold;
        }

        .create-link:hover {
            color: #8E0000;
            text-decoration: underline;
        }
        .error-label {
            display: block;
            color: #D32F2F;
            font-size: 14px;
            margin-top: 7px;
            font-weight: bold;
        }

        .auto-style1 {
            width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            border-top: 6px solid #C62828;
            height: 279px;
        }

        </style>
</head>

<body style="height: 337px">

<form id="form1" runat="server">

    <div class="auto-style1">

        <h2>Payment</h2>

        <div class="field">

            <label for="accountNo">
                Account No
            </label>

            <asp:TextBox ID="TextBox1"
                runat="server"
                CssClass="textbox"></asp:TextBox>

            <br />

                <asp:Label ID="Label1"
                    runat="server"
                    CssClass="error-label"
                    Visible="False">
                  Insufficient Balance   </asp:Label>

            <div style="margin-top:10px;">
                Don't have an account?

                <asp:HyperLink ID="HyperLink1"
                    runat="server"
                    CssClass="create-link"
                    NavigateUrl="~/AccountInsert.aspx">
                    Create account
                </asp:HyperLink>
            </div>

        </div>

        <asp:Button ID="btnPayment"
            runat="server"
            Text="Pay"
            CssClass="payment-btn"
            OnClick="btnPayment_Click" />

                <asp:Label ID="Label2"
                    runat="server"
                    CssClass="error-label"
                    Visible="False">
                  </asp:Label>

            <br />

    </div>

</form>

</body>
</html>