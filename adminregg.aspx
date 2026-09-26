<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminregg.aspx.cs" Inherits="trail2.adminregg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 201px">
                &nbsp;</td>
            <td style="width: 145px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Name"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="adminTextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="adminTextBox1" ErrorMessage="*Enter the name" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 201px">
                &nbsp;</td>
            <td style="width: 145px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Email"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="adminTextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="adminTextBox2" ErrorMessage="*Enter the correct emai id" Font-Bold="False" ForeColor="Black" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 201px">
                &nbsp;</td>
            <td style="width: 145px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Address"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="adminTextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adminTextBox3" ErrorMessage="*Enter the address" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 201px">
                &nbsp;</td>
            <td style="width: 145px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="Username"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="adminTextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="adminTextBox4" ErrorMessage="*Enter the usename" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 201px">
                &nbsp;</td>
            <td style="width: 145px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Text="Password"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="adminTextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="adminTextBox5" ErrorMessage="*Enter the password" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 160px">
                &nbsp;</td>
            <td style="height: 23px; width: 160px;">
                &nbsp;</td>
            <td style="height: 23px; width: 201px;">
                &nbsp;</td>
            <td style="height: 23px; width: 145px;">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Text=" Confirm Password"></asp:Label>
            </td>
            <td style="height: 23px"></td>
            <td style="height: 23px">
                <asp:TextBox ID="adminTextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="adminTextBox5" ControlToValidate="adminTextBox6" ErrorMessage="*Password is not matching" Font-Bold="False" ForeColor="Black"></asp:CompareValidator>
            </td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 160px">&nbsp;</td>
            <td style="width: 160px">&nbsp;</td>
            <td style="width: 201px">&nbsp;</td>
            <td style="width: 145px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" BackColor="White" BorderColor="Black" Font-Bold="True" ForeColor="Black" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">&nbsp;</td>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 201px">&nbsp;</td>
            <td style="width: 145px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">&nbsp;</td>
            <td style="width: 160px">
                &nbsp;</td>
            <td style="width: 201px">&nbsp;</td>
            <td style="width: 145px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
