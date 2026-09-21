<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountInsert.aspx.cs" Inherits="trail2.AccountInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Create Account</title>
    <script type="text/javascript">
    function validateAccountNumber() {

        var accountNumber = document.getElementById("<%= TextBox1.ClientID %>").value.trim();

        if (accountNumber == "") {
            alert("Please enter account number.");
            return false;
        }

        if (!/^[0-9]+$/.test(accountNumber)) {
            alert("Account number should contain only numbers.");
            return false;
        }

        if (accountNumber.length != 10) {
            alert("Account number must contain exactly 10 digits.");
            return false;
        }

        return true;
        }
</script>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #FFF5F5;
        }

        /* Main container */
        .account-container {
            width: 450px;
            margin: 80px auto;
            background-color: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.12);
            border-top: 6px solid #C62828;
        }

        /* Heading */
        .account-container h1 {
            text-align: center;
            color: #C62828;
            margin-bottom: 10px;
        }

        /* Subtitle */
        .account-container .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        /* Form group */
        .form-group {
            margin-bottom: 20px;
        }

        /* Labels */
        .form-group label {
            display: block;
            font-weight: bold;
            color: #444;
            margin-bottom: 8px;
        }

        /* Textbox and Dropdown */
        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
            box-sizing: border-box;
            outline: none;
            background-color: #fff;
        }

        /* Focus color */
        .form-control:focus {
            border-color: #C62828;
            box-shadow: 0 0 4px rgba(198, 40, 40, 0.25);
        }

        /* Already exists message */
        .error-label {
            display: block;
            color: #D32F2F;
            font-size: 14px;
            margin-top: 7px;
            font-weight: bold;
        }

        /* Button container */
        .button-container {
            text-align: center;
            margin-top: 25px;
        }

        /* Create button */
        .btn-create {
            background-color: #C62828;
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        /* Button hover */
        .btn-create:hover {
            background-color: #8E0000;
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="account-container">

            <h1>Create Account</h1>

            <p class="subtitle">
                Enter the account details below
            </p>

            <!-- Account Type -->

            <div class="form-group">

                <label>Account Type</label>

                <asp:DropDownList ID="DropDown1"
                    runat="server"
                    CssClass="form-control">

                    <asp:ListItem Text="-- Select Account Type --"
                        Value="">
                    </asp:ListItem>

                    <asp:ListItem Text="Savings Account"
                        Value="Savings">
                    </asp:ListItem>

                    <asp:ListItem Text="Current Account"
                        Value="Current">
                    </asp:ListItem>

                    <asp:ListItem Text="Fixed Deposit Account"
                        Value="Fixed Deposit">
                    </asp:ListItem>

                    <asp:ListItem Text="Salary Account"
                        Value="Salary">
                    </asp:ListItem>

                    <asp:ListItem Text="Recurring Deposit Account"
                        Value="Recurring Deposit">
                    </asp:ListItem>

                    <asp:ListItem Text="NRI Account"
                        Value="NRI">
                    </asp:ListItem>

                </asp:DropDownList>

            </div>

            <!-- Account Number -->

            <div class="form-group">

                <label>Account Number</label>

                <asp:TextBox ID="TextBox1"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Enter account number"
                    AutoPostBack="true"
                    OnTextChanged="TextBox1_TextChanged">
                </asp:TextBox>

                <!-- Account number already exists message -->

                <asp:Label ID="Label1"
                    runat="server"
                    CssClass="error-label"
                    Visible="False">
                    This Account Number already exists.
                </asp:Label>

            </div>

            <!-- Balance -->

            <div class="form-group">

                <label>Balance</label>

                <asp:TextBox ID="TextBox2"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Enter initial balance"
                    TextMode="Number"></asp:TextBox>

            </div>

            <!-- Create Button -->

            <div class="button-container">


                <asp:Button ID="Button1"
    runat="server"
    Text="Create Account"
    CssClass="btn-create"
    OnClientClick="return validateAccountNumber();"
    OnClick="Button1_Click" />

            </div>

        </div>

    </form>

</body>

</html>