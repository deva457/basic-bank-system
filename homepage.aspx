<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 578px;
        }
        .style6
        {
            text-align: center;
            height: 108px;
        }
        .style7
        {
            text-align: center;
            height: 42px;
        }
        .style8
        {
            width: 477px;
        }
    </style>
</head>
<body background="img/fif.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2" 
                    
                    style="font-size: xx-large; font-weight: 500; font-style: normal; color: #FFFF66;" 
                    class="style6">
                    MONEY TRANSFER</td>
            </tr>
            <tr>
                <td colspan="2" 
                    
                    style="font-size: xx-large; font-weight: 500; font-style: normal; color: #000000;" 
                    class="style7" align="left">
                    <asp:Image ID="Image1" runat="server" Height="404px" ImageUrl="~/img/1.png" 
                        style="margin-top: 0px" Width="734px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style8">
                    <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                        Text="View Data" Width="94px" />
                </td>
                <td align="left" class="style4">
                    <asp:Button ID="Button2" runat="server" Height="26px" onclick="Button2_Click" 
                        Text="Transfer Money" Width="104px" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
