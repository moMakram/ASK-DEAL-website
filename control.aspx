<%@ Page Language="C#" AutoEventWireup="true" CodeFile="control.aspx.cs" Inherits="control" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 368px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700; font-size: xx-large; text-align: center">
    
        <br />
        <br />
    
        ControlPanel<br />
        <br />
        <table align="center" class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-size: small">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                        PostBackUrl="~/MemberSearch.aspx" style="font-size: large">Members</asp:LinkButton>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" 
                        PostBackUrl="~/CategorySearch.aspx" style="font-size: large">Add Category</asp:LinkButton>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                        PostBackUrl="~/PostsSearch.aspx" style="font-size: large">Control Post</asp:LinkButton>
                    </td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
