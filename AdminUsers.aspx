<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="trail2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Colo Shop - Manage Users</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #fafafa;
            color: #222;
        }

        /* ================= HEADER ================= */

        .header {
            height: 70px;
            background: #ffffff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 55px;
            box-shadow: 0 2px 12px rgba(0,0,0,0.08);
        }

        .logo {
            font-size: 28px;
            font-weight: 800;
            letter-spacing: 1px;
            color: #222;
        }

        .logo span {
            color: #CC0000;
        }

        /* ================= NAVIGATION ================= */

        .navbar {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .navbar a {
            text-decoration: none;
            color: #444;
            font-size: 13px;
            font-weight: 600;
            text-transform: uppercase;
            transition: 0.2s;
        }

        .navbar a:hover {
            color: #CC0000;
        }

        .admin-text {
            color: #CC0000 !important;
            font-weight: 700 !important;
        }

        /* ================= MAIN ================= */

        .main-container {
            max-width: 1200px;
            margin: auto;
            padding: 45px 25px;
        }

        /* ================= TITLE ================= */

        .title-section {
            text-align: center;
            margin-bottom: 35px;
        }

        .title-section h1 {
            margin: 0;
            font-size: 30px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .red-line {
            width: 55px;
            height: 4px;
            background: #CC0000;
            margin: 12px auto;
        }

        .title-section p {
            margin: 0;
            color: #888;
            font-size: 14px;
        }

        /* ================= USER SECTION ================= */

        .user-section {
            background: #ffffff;
            border: 1px solid #eeeeee;
            border-top: 3px solid #CC0000;
            padding: 25px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
        }

        .section-header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .section-icon {
            width: 45px;
            height: 45px;
            border-radius: 50%;
            background: #fff0f0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 21px;
            margin-right: 12px;
        }

        .section-title {
            font-size: 18px;
            font-weight: 700;
        }

        .section-subtitle {
            font-size: 12px;
            color: #888;
            margin-top: 3px;
        }

        /* ================= GRIDVIEW ================= */

        .user-grid {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #eeeeee;
            font-size: 13px;
        }

        .user-grid th {
            background: #CC0000;
            color: #ffffff;
            padding: 13px 10px;
            text-align: center;
            font-size: 12px;
            text-transform: uppercase;
            font-weight: 700;
            border: 1px solid #CC0000;
        }

        .user-grid td {
            padding: 13px 10px;
            text-align: center;
            border: 1px solid #eeeeee;
            color: #444;
            background: #ffffff;
        }

        .user-grid tr:hover td {
            background: #fff7f7;
        }

        /* ================= STATUS ================= */

        .status-active {
            color: #16803c;
            font-weight: 700;
        }

        .status-blocked {
            color: #CC0000;
            font-weight: 700;
        }

        /* ================= ACTION BUTTON ================= */

        .action-button {
            display: inline-block;
            padding: 7px 14px;
            border: none;
            background: #CC0000;
            color: #ffffff;
            text-decoration: none;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            cursor: pointer;
        }

        .action-button:hover {
            background: #990000;
        }

        /* ================= BACK BUTTON ================= */

        .back-section {
            margin-top: 20px;
        }

        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background: #333333;
            color: #ffffff;
            text-decoration: none;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .back-button:hover {
            background: #111111;
        }

        /* ================= FOOTER ================= */

        .footer {
            text-align: center;
            padding: 25px;
            color: #999;
            font-size: 12px;
        }

        /* ================= TABLET ================= */

        @media screen and (max-width: 800px) {

            .header {
                padding: 0 30px;
            }

            .user-section {
                overflow-x: auto;
            }

            .user-grid {
                min-width: 750px;
            }

        }

        /* ================= MOBILE ================= */

        @media screen and (max-width: 600px) {

            .header {
                height: auto;
                padding: 18px 20px;
                flex-direction: column;
                gap: 12px;
            }

            .navbar {
                gap: 15px;
                flex-wrap: wrap;
                justify-content: center;
            }

            .main-container {
                padding: 30px 15px;
            }

            .title-section h1 {
                font-size: 25px;
            }

            .user-section {
                padding: 15px;
            }

        }

    </style>

</head>


<body>

    <form id="form1" runat="server">


        <!-- ================= HEADER ================= -->

        <header class="header">

           <div class="logo">
                Styled By<span>Her</span>
            </div>

            <nav class="navbar">

                <a href="adminhomepage.aspx" class="admin-text">
                  Home
                </a>

                <a href="#">
                    Register
                </a>

                <a href="#">
                   Pages
                </a>

                <a href="#">
                    Blog
                </a>

            </nav>

        </header>


        <!-- ================= MAIN ================= -->

        <div class="main-container">


            <!-- ================= TITLE ================= -->

            <div class="title-section">

                <h1>
                    Manage Users
                </h1>

                <div class="red-line"></div>

                <p>
                    View customer details and manage user account status
                </p>

            </div>


            <!-- ================= USER TABLE ================= -->

            <div class="user-section">


                <div class="section-header">

                    <div class="section-icon">
                        👥
                    </div>

                    <div>

                        <div class="section-title">
                            User Details
                        </div>

                        <div class="section-subtitle">
                            View registered users and block or activate their accounts
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Users_Id" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="Users_Id" HeaderText="Users_id" />
                                    <asp:BoundField DataField="Users_Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Users_Age" HeaderText="Age" />
                                    <asp:BoundField DataField="Users_Email" HeaderText="Email" />
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" BackColor="#CC0000" CommandArgument='<%# Eval("Users_Id") %>' Font-Bold="True" Font-Italic="True" ForeColor="White" Text="Block" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>

                    </div>

                </div>


                <!-- ================= GRIDVIEW ================= -->


                <!-- ================= BACK BUTTON ================= -->

                <div class="back-section">

                    <a href="adminhomepage.aspx"
                       class="back-button">

                        ← Back to Dashboard

                    </a>

                </div>


            </div>


        </div>


        <!-- ================= FOOTER ================= -->

        <div class="footer">

        </div>


    </form>

</body>

</html>