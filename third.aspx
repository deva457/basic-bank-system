<%@ Page Language="C#" AutoEventWireup="true" CodeFile="third.aspx.cs" Inherits="third" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 213px;
        }
        .style5
        {}
        .style6
        {
        }
        .style7
        {
        }
        .style8
        {
            width: 102px;
        }
        .style14
        {
            width: 412px;
            font-weight: bold;
        }
        .style16
        {
            width: 102px;
            height: 30px;
        }
        .style17
        {
            height: 30px;
        }
        .style18
        {
            width: 100%;
        }
    </style>
</head>
<body background="img/fif.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Transfer Money" style="font-weight: 700" />
                </td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="View All Transaction" 
                        style="font-weight: 700" onclick="Button1_Click1" />
                </td>
            </tr>
        </table>
    
    </div>
    <table border="0" class="style1">
        <tr>
            <td class="style6" colspan="3">
                <table class="style18">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="center" rowspan="4" style="color: #FFFFFF">
                            <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Height="352px" 
                                Width="684px">
                            </asp:GridView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style14" style="color: #FFFFFF" rowspan="3">
                &nbsp;</td>
            <td class="style8" style="color: #FFFFFF">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Cname :" Visible="False"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" style="color: #FFFFFF; font-weight: 700;">
                <asp:Label ID="Label2" runat="server" Text="Account no :" Visible="False"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16" style="color: #FFFFFF">
                <strong>
                <asp:Label ID="Label3" runat="server" Text="Amount :" Visible="False"></asp:Label>
                </strong></td>
            <td class="style17">
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter amount" Visible="False"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6" style="color: #FFFFFF">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td align="left" class="style7" colspan="2" style="color: #FFFFFF">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    style="font-weight: 700" Text="Send Money" Visible="False" Width="150px" />
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
