<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-family: Tahoma;
        }
        .style2
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" class="style1">
            <tr>
                <td align="center" bgcolor="#006600" class="style2">
                    الدخول إلى لوحة التحكم</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table cellpadding="2">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" 
                                    style="font-size: medium; font-family: Tahoma" Text="دخول" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" style="font-size: medium"></asp:TextBox>
                            </td>
                            <td>
                                كلمة المرور</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    1234</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
