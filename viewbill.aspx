```aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewbill.aspx.cs" Inherits="trail2.viewbill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Colo Shop</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Colo Shop Template" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap -->
    <link rel="stylesheet"
          type="text/css"
          href="styles/bootstrap4/bootstrap.min.css" />

    <!-- Font Awesome -->
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
          rel="stylesheet"
          type="text/css" />

    <!-- Colo Shop CSS -->
    <link rel="stylesheet"
          type="text/css"
          href="plugins/OwlCarousel2-2.2.1/owl.carousel.css" />

    <link rel="stylesheet"
          type="text/css"
          href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css" />

    <link rel="stylesheet"
          type="text/css"
          href="plugins/OwlCarousel2-2.2.1/animate.css" />

    <link rel="stylesheet"
          type="text/css"
          href="styles/main_styles.css" />

    <link rel="stylesheet"
          type="text/css"
          href="styles/responsive.css" />


    <!-- =========================
         BILL CSS
         ========================= -->

    <style type="text/css">

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }


        /* =========================
           BILL CONTAINER
           ========================= */

        .bill-container {
            width: 650px;
            margin: 140px auto 40px auto;
            padding: 18px;
            background-color: white;
            border-top: 4px solid #c62828;
            box-shadow: 0 0 10px rgba(198, 40, 40, 0.2);
        }


        /* =========================
           BILL HEADER
           ========================= */

        .bill-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .bill-header h1 {
            margin: 0;
            color: #c62828;
            font-size: 25px;
        }

        .bill-header p {
            margin: 4px 0;
            color: #555;
            font-size: 13px;
        }


        /* =========================
           INVOICE TITLE
           ========================= */

        .bill-title {
            text-align: right;
        }

        .bill-title h2 {
            margin: 0;
            color: #c62828;
            font-size: 22px;
        }

        .bill-title p {
            margin: 4px 0;
            color: #444;
            font-size: 13px;
        }


        /* =========================
           HORIZONTAL LINE
           ========================= */

        .bill-container hr {
            border: none;
            border-top: 1px solid #c62828;
            margin: 12px 0;
        }


        /* =========================
           CUSTOMER DETAILS
           ========================= */

        .customer-details {
            margin: 12px 0;
            padding: 10px;
            background-color: #fff5f5;
            border-left: 4px solid #c62828;
        }

        .customer-details h3 {
            margin-top: 0;
            margin-bottom: 6px;
            color: #c62828;
            font-size: 16px;
        }

        .customer-details p {
            margin: 4px 0;
            color: #444;
            font-size: 13px;
        }


        /* =========================
           BILL TABLE
           ========================= */

        .bill-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 12px;
        }

        .bill-table th,
        .bill-table td {
            border: 1px solid #ddd;
            padding: 7px;
            text-align: center;
            font-size: 13px;
        }

        .bill-table th {
            background-color: #c62828;
            color: white;
            font-weight: bold;
        }

        .bill-table tbody tr:nth-child(even) {
            background-color: #fff5f5;
        }

        .bill-table tbody tr:hover {
            background-color: #ffe5e5;
        }


        /* =========================
           BILL SUMMARY
           ========================= */

        .bill-summary {
            width: 220px;
            margin-left: auto;
            margin-top: 12px;
        }

        .bill-summary p,
        .bill-summary h3 {
            display: flex;
            justify-content: space-between;
            margin: 6px 0;
            font-size: 13px;
        }

        .bill-summary h3 {
            padding-top: 8px;
            border-top: 1px solid #c62828;
            color: #c62828;
            font-size: 17px;
        }


        /* =========================
           BILL FOOTER
           ========================= */

        .bill-footer {
            text-align: center;
            margin-top: 18px;
            border-top: 1px solid #ddd;
            padding-top: 8px;
            color: #777;
            font-size: 12px;
        }

        .bill-footer p {
            margin: 4px 0;
        }

        .bill-footer p:last-child {
            color: #c62828;
            font-weight: bold;
        }


        /* =========================
           MOBILE
           ========================= */

        @media (max-width: 768px) {

            .bill-container {
                width: 90%;
                margin: 100px auto 30px auto;
                padding: 15px;
            }

            .bill-header h1 {
                font-size: 20px;
            }

            .bill-title h2 {
                font-size: 18px;
            }

            .bill-table th,
            .bill-table td {
                padding: 5px;
                font-size: 11px;
            }

            .bill-summary {
                width: 200px;
            }
        }

    </style>

</head>


<body>
```aspx
<form id="form1" runat="server">


    <!-- ==========================================
         NAVBAR
         ========================================== -->

    <div class="super_container">

        <header class="header trans_300">

            <div class="main_nav_container">

                <div class="container">

                    <div class="row">

                        <div class="col-lg-12 text-right">

                            <!-- SHOP LOGO -->

                            <div class="logo_container">
							<a href="#">Styled by<span> her</span></a>
						</div>


                            <!-- NAVIGATION -->

                            <nav class="navbar">

                                <ul class="navbar_menu">

                                   	<li><a href="User/login1.aspx">home</a></li>
								<li> <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        Register
    </a>

    <div class="dropdown-menu">
        <a class="dropdown-item" href="Reg.aspx">
            User Registration
        </a>

        <a class="dropdown-item" href="adminregg.aspx">
            Admin Registration
        </a>
    </div></li>

                                   

                                  

                                    <li>
                                        <a href="#">pages</a>
                                    </li>

                                    <li>
                                        <a href="#">blog</a>
                                    </li>

                                   <%-- <li>
                                        <a href="contact.html">contact</a>
                                    </li>--%>

                                </ul>


                                <!-- USER ICONS -->

                                <ul class="navbar_user">

                                    <li>
                                        <a href="#">
                                            <i class="fa fa-search"
                                               aria-hidden="true">
                                            </i>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user"
                                               aria-hidden="true">
                                            </i>
                                        </a>
                                    </li>

                                    <li class="checkout">

                                        <a href="viewcart.aspx">

                                            <i class="fa fa-shopping-cart"
                                               aria-hidden="true">
                                            </i>

                                        </a>

                                    </li>

                                </ul>


                                <!-- MOBILE MENU -->

                                <div class="hamburger_container">

                                    <i class="fa fa-bars"
                                       aria-hidden="true">
                                    </i>

                                </div>

                            </nav>

                        </div>

                    </div>

                </div>

            </div>

        </header>

    </div>


    <!-- ==========================================
         BILL
         ========================================== -->

    <div class="bill-container">


        <!-- BILL HEADER -->

        <div class="bill-header">

            <div>

                <h1>Styed By Her</h1>

                <p>
                    123, Panambilly Nagar,Street, Kochi
                </p>

                <p>
                    Phone: 9876543210
                </p>

                <p>
                    Date:
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </p>

            </div>


            <div class="bill-title">

                <h2>INVOICE</h2>

                <p>
                    &nbsp;</p>

            </div>

        </div>


        <hr />


        <!-- CUSTOMER DETAILS -->

        <div class="customer-details">

            <h3>Bill To</h3>

            <p>
                <b>Name:</b> 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>

            <p>
                <b>Address:</b> 
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </p>

            <p>
                <b>Phone:</b>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </p>

        </div>
        <asp:GridView ID="GridView1" runat="server"
    AutoGenerateColumns="False"
    Width="100%"
    CssClass="bill-table"
    CellPadding="10"
    BorderStyle="Solid"
    BorderWidth="1px"
    HeaderStyle-BackColor="#f4c430"
    HeaderStyle-ForeColor="#333333"
    HeaderStyle-Font-Bold="true"
    RowStyle-BackColor="White"
    AlternatingRowStyle-BackColor="#fffbea"
    RowStyle-HorizontalAlign="Center" DataKeyNames="Order_id">
<AlternatingRowStyle BackColor="#FFFBEA"></AlternatingRowStyle>

            <Columns>
                <asp:BoundField DataField="Products_Title" HeaderText="Product" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Sub_total" HeaderText="Subtotal" />
            </Columns>

<HeaderStyle BackColor="#F4C430" Font-Bold="True" ForeColor="#333333"></HeaderStyle>

<RowStyle HorizontalAlign="Center" BackColor="White"></RowStyle>
</asp:GridView>

        <!-- BILL SUMMARY -->

        <div class="bill-summary">

            <p>

                &nbsp;</p>


            <p>

                &nbsp;</p>


            <h3>

                <span>Grand Total:</span>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

             <%--   <asp:Button ID="Button1" runat="server" BorderColor="White" Font-Italic="True" ForeColor="#CC0000" OnClick="Button1_Click" Text="Payment" Width="220px" />--%>
                <asp:Button ID="Button1"
    runat="server"
    Text="Payment"
    Width="220px"
    PostBackUrl="~/paymentpage.aspx" BackColor="White" Font-Bold="True" />

            </h3>

        </div>


        <!-- BILL FOOTER -->

        <div class="bill-footer">

            <p>
                Thank you for shopping with us!
            </p>

            <p>
                Visit Again ❤️
            </p>

        </div>

    </div>


</form>
&nbsp;<table class="bill-table">
    </table>

</body>

</html>
