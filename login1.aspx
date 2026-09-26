<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="trail2.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 215px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Username" ForeColor="#666666"></asp:Label>
            </td>
            <td style="width: 145px">
                <asp:TextBox ID="loginTextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">
                &nbsp;</td>
            <td style="width: 145px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="Password" ForeColor="#666666"></asp:Label>
            </td>
            <td style="width: 145px">
                <asp:TextBox ID="loginTextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">&nbsp;</td>
            <td style="width: 145px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">&nbsp;</td>
            <td style="width: 145px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BorderColor="#663300" ForeColor="White" BackColor="#663300" Font-Bold="True" Font-Italic="True" Height="24px" Width="111px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">&nbsp;</td>
            <td style="width: 145px">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
