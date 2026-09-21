<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhomepage.aspx.cs" Inherits="trail2.adminhomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Colo Shop - Admin Dashboard</title>

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
            max-width: 1150px;
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

        /* ================= SECTION ================= */

        .management-section {
            margin-bottom: 30px;
        }

        .section-heading {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 1px solid #eeeeee;
        }

        .section-heading span {
            width: 5px;
            height: 25px;
            background: #CC0000;
            display: inline-block;
        }

        .section-heading h2 {
            margin: 0;
            font-size: 19px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ================= DASHBOARD GRID ================= */

        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 18px;
        }

        /* ================= CARD ================= */

        .dashboard-card {
            background: #ffffff;
            border: 1px solid #eeeeee;
            padding: 25px;
            text-align: center;
            transition: 0.25s;
        }

        .dashboard-card:hover {
            transform: translateY(-4px);
            border-color: #CC0000;
            box-shadow: 0 8px 20px rgba(0,0,0,0.10);
        }

        /* ================= ICON ================= */

        .card-icon {
            width: 55px;
            height: 55px;
            margin: 0 auto 14px;
            border-radius: 50%;
            background: #fff0f0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
        }

        /* ================= CARD TITLE ================= */

        .card-title {
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .card-description {
            color: #888;
            font-size: 12px;
            margin-bottom: 17px;
            min-height: 18px;
        }

        /* ================= BUTTON ================= */

        .dashboard-button {
            display: block;
            width: 100%;
            padding: 11px 5px;
            background: #CC0000;
            color: #ffffff;
            text-decoration: none;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            transition: 0.2s;
        }

        .dashboard-button:hover {
            background: #990000;
        }

        /* ================= USER & FEEDBACK ================= */

        .user-card {
            border-top: 3px solid #CC0000;
        }

        .feedback-card {
            border-top: 3px solid #CC0000;
        }

        .user-card .card-icon,
        .feedback-card .card-icon {
            background: #ffeaea;
        }

        /* ================= FOOTER ================= */

        .footer {
            text-align: center;
            padding: 25px;
            color: #999;
            font-size: 12px;
        }

        /* ================= TABLET ================= */

        @media screen and (max-width: 700px) {

            .dashboard-grid {
                grid-template-columns: 1fr;
            }

            .header {
                padding: 0 30px;
            }

            .navbar {
                gap: 15px;
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

            .section-heading h2 {
                font-size: 16px;
            }
        }

    </style>

</head>


<body>

    <form id="form1" runat="server">

        <!-- ================= HEADER ================= -->

        <header class="header">

            <div class="logo">
                colo<span>shop</span>
            </div>

            <nav class="navbar">

                <a href="adminhomepage.aspx" class="admin-text">
                    Admin Home
                </a>

                <a href="#">
                    Orders
                </a>

                <a href="#">
                    Customers
                </a>

                <a href="#">
                    Logout
                </a>

            </nav>

        </header>


        <!-- ================= MAIN ================= -->

        <div class="main-container">


            <!-- ================= TITLE ================= -->

            <div class="title-section">

                <h1>
                    Admin Dashboard
                </h1>

                <div class="red-line"></div>

                <p>
                    Manage products, categories, users and customer feedback
                </p>

            </div>


            <!-- ================================================= -->
            <!--              CATEGORY MANAGEMENT                 -->
            <!-- ================================================= -->

            <div class="management-section">

                <div class="section-heading">

                    <span></span>

                    <h2>
                        Category Management
                    </h2>

                </div>


                <div class="dashboard-grid">


                    <!-- ADD CATEGORY -->

                    <div class="dashboard-card">

                        <div class="card-icon">
                            📂
                        </div>

                        <div class="card-title">
                            Add Category
                        </div>

                        <div class="card-description">
                            Create a new product category
                        </div>

                        <asp:LinkButton
                            ID="LinkButtoncategory"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/admincategorypage.aspx">

                            Add Category

                        </asp:LinkButton>

                    </div>


                    <!-- EDIT CATEGORY -->

                    <div class="dashboard-card">

                        <div class="card-icon">
                            ✏️
                        </div>

                        <div class="card-title">
                            Edit Category
                        </div>

                        <div class="card-description">
                            View and modify existing categories
                        </div>

                        <asp:LinkButton
                            ID="LinkButtoneditcategory"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/editcategory.aspx">

                            Edit Category

                        </asp:LinkButton>

                    </div>


                </div>

            </div>



            <!-- ================================================= -->
            <!--                PRODUCT MANAGEMENT                 -->
            <!-- ================================================= -->

            <div class="management-section">

                <div class="section-heading">

                    <span></span>

                    <h2>
                        Product Management
                    </h2>

                </div>


                <div class="dashboard-grid">


                    <!-- ADD PRODUCT -->

                    <div class="dashboard-card">

                        <div class="card-icon">
                            🛒
                        </div>

                        <div class="card-title">
                            Add Product
                        </div>

                        <div class="card-description">
                            Add new products to your store
                        </div>

                        <asp:LinkButton
                            ID="LinkButtonproduct"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/adminproductpage.aspx">

                            Add Product

                        </asp:LinkButton>

                    </div>


                    <!-- EDIT PRODUCT -->

                    <div class="dashboard-card">

                        <div class="card-icon">
                            📝
                        </div>

                        <div class="card-title">
                            Edit Product
                        </div>

                        <div class="card-description">
                            Update or manage existing products
                        </div>

                        <asp:LinkButton
                            ID="LinkButtoneditproduct"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/editproduct.aspx">

                            Edit Product

                        </asp:LinkButton>

                    </div>


                </div>

            </div>



            <!-- ================================================= -->
            <!--          USER & FEEDBACK MANAGEMENT              -->
            <!-- ================================================= -->

            <div class="management-section">

                <div class="section-heading">

                    <span></span>

                    <h2>
                        User &amp; Feedback Management
                    </h2>

                </div>


                <div class="dashboard-grid">


                    <!-- MANAGE USERS -->

                    <div class="dashboard-card user-card">

                        <div class="card-icon">
                            👥
                        </div>

                        <div class="card-title">
                            Manage Users
                        </div>

                        <div class="card-description">
                            View users and block or activate accounts
                        </div>

                        <asp:LinkButton
                            ID="LinkButtonusers"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/AdminUsers.aspx">

                            Manage Users

                        </asp:LinkButton>

                    </div>


                    <!-- FEEDBACK -->

                    <div class="dashboard-card feedback-card">

                        <div class="card-icon">
                            💬
                        </div>

                        <div class="card-title">
                            Customer Feedback
                        </div>

                        <div class="card-description">
                            View and manage customer feedback
                        </div>

                        <asp:LinkButton
                            ID="LinkButtonfeedback"
                            runat="server"
                            CssClass="dashboard-button"
                            PostBackUrl="~/AdminFeedback.aspx">

                            View Feedback

                        </asp:LinkButton>

                    </div>


                </div>

            </div>


        </div>


        <!-- ================= FOOTER ================= -->

        <div class="footer">

        </div>


    </form>

</body>

</html>