<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="trail2.Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="height: 23px; width: 471px">
                &nbsp;</td>
            <td style="height: 23px; width: 141px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Name"></asp:Label>
            </td>
            <td style="height: 23px; width: 165px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px; width: 326px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter the name" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 471px">
                &nbsp;</td>
            <td style="width: 141px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Age"></asp:Label>
            </td>
            <td style="width: 165px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 326px">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter the age" Font-Bold="False" ForeColor="Black" MaximumValue="130" MinimumValue="18" Type="Integer"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">
                </td>
            <td style="width: 141px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Phone number"></asp:Label>
            </td>
            <td style="width: 165px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="width: 326px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter correct Phone number" Font-Bold="False" ForeColor="Black" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 471px; height: 18px;">
                </td>
            <td style="width: 141px; height: 18px;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Email"></asp:Label>
            </td>
            <td style="width: 165px; height: 18px;">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="height: 18px; width: 326px;">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Enter the correct email id" Font-Bold="False" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
          <%--  <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>--%>
        </tr>
        <tr>
            <td style="width: 471px; height: 21px;">
                </td>
            <td style="width: 141px; height: 21px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Address"></asp:Label>
            </td>
            <td style="width: 165px; height: 21px;">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine">

 </asp:TextBox>
            </td>
            <td style="height: 21px; width: 326px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Enter the address" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td style="width: 471px; height: 2px;">
                </td>
            <td style="width: 141px; height: 2px;">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Pincode"></asp:Label>
            </td>
            <td style="width: 165px; height: 2px;">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="height: 2px; width: 326px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Enter the pincode" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 2px"></td>
            <td style="height: 2px"></td>
            <td style="height: 2px"></td>
            <td style="height: 2px"></td>
            <td style="height: 2px"></td>
            <td style="height: 2px"></td>
            <td style="height: 2px"></td>
        </tr>
        <tr>
            <td style="width: 471px">
                </td>
            <td style="width: 141px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Username"></asp:Label>
            </td>
            <td style="width: 165px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td style="width: 326px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Enter the username" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 471px; height: 8px;">
                </td>
            <td style="width: 141px; height: 8px;">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Password"></asp:Label>
            </td>
            <td style="width: 165px; height: 8px;">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td style="height: 8px; width: 326px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Enter the password" Font-Bold="False" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
          <%--  <td style="height: 8px"></td>
            <td style="height: 8px"></td>
            <td style="height: 8px"></td>
            <td style="height: 8px"></td>
            <td style="height: 8px"></td>
            <td style="height: 8px"></td>
            <td style="height: 8px"></td>--%>
        </tr>
        <tr>
            <td style="width: 471px; height: 1px;">
                </td>
            <td style="width: 141px; height: 1px;">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text="Confirm Password"></asp:Label>
            </td>
            <td style="width: 165px; height: 1px;">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td style="height: 1px; width: 326px;">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="*Password is not match" Font-Bold="False" ForeColor="Black"></asp:CompareValidator>
            </td>
          <%--  <td style="height: 1px"></td>
            <td style="height: 1px"></td>
            <td style="height: 1px"></td>
            <td style="height: 1px"></td>
            <td style="height: 1px"></td>
            <td style="height: 1px"></td>
            <td style="height: 1px"></td>--%>
        </tr>
        <tr>
            <td style="width: 471px">&nbsp;</td>
            <td style="width: 141px">&nbsp;</td>
            <td style="width: 165px">&nbsp;</td>
            <td style="width: 326px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">
                &nbsp;</td>
            <td style="width: 141px">
                &nbsp;</td>
            <td style="width: 165px">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" BackColor="White" BorderColor="Black" Font-Bold="True" ForeColor="Black" />
            </td>
            <td style="width: 326px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 471px">&nbsp;</td>
            <td style="width: 141px">&nbsp;</td>
            <td style="width: 165px">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="width: 326px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
