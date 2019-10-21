<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
        }
        .style2
        {
            width: 332px;
            height: 145px;
        }
        .style3
        {
            width: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong><em>Administrator<br />
        </em></strong>
        <table align="center" class="style2">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Username"></asp:Label>
                </td>
                <strong>
                <td>
                    <asp:TextBox ID="txtUser" runat="server" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUser" ErrorMessage="insert your name" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 40px">
                    <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Password"></asp:Label>
                </td>
                <td>
                    <strong>
                    <asp:TextBox ID="txtPass" runat="server" style="text-align: center" 
                        TextMode="Password"></asp:TextBox>
                    </strong>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPass" ErrorMessage="your Password" 
                        style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left; margin-left: 40px">
                    <asp:CheckBox ID="chkRem" runat="server" 
                        style="font-size: small; text-align: left" Text="remember me next time" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left; margin-left: 40px">
                    <strong>
                    <asp:Label ID="lblMsg" runat="server" 
                        style="text-align: right; font-size: small"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="margin-left: 40px">
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                        Text="login" />
                </td>
            </tr>
        </table>
        </strong>
    
    </div>
    </form>
</body>
</html>
