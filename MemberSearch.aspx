<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberSearch.aspx.cs" Inherits="MemberSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 781px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table align="center" border="5" class="style1">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                                Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                                style="text-align: center; font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: xx-large" 
                                Text="Search For Members"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left">
                            <asp:Label ID="Label2" runat="server" 
                                style="font-weight: 700; font-size: large; text-decoration: underline" 
                                Text="Search By :"></asp:Label>
                    <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:RadioButtonList ID="rdoField" runat="server" Font-Bold="True" 
                                Font-Size="Large" Height="16px" RepeatDirection="Horizontal" 
                                style="text-align: center; margin-top: 1px" Width="556px">
                                <asp:ListItem Selected="True" Value="firstname">FirstName</asp:ListItem>
                                <asp:ListItem Value="lastname">LastName</asp:ListItem>
                                <asp:ListItem Value="mail">e-mail</asp:ListItem>
                            </asp:RadioButtonList>
                    <br />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Label ID="Label3" runat="server" 
                                style="font-size: large; font-weight: 700" Text="ValueToSearch : "></asp:Label>
                            <asp:TextBox ID="txtSearch" runat="server" Height="21px" 
                                style="text-align: center; margin-top: 7px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSearch" runat="server" Font-Bold="True" Height="39px" 
                                onclick="btnSearch_Click" Text="Search" Width="74px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: right">
                            <asp:Button ID="btnRemove" runat="server" Enabled="False" Font-Bold="True" 
                                Height="35px" onclick="btnRemove_Click" Text="Remove Selected User" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#FF0066" 
                                style="text-align: left"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    loading...
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <center>
                                <asp:GridView ID="grd" runat="server" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" onselectedindexchanged="grd_SelectedIndexChanged" 
                                    Width="484px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" 
                                            ShowHeader="True" Text="&gt;&gt;&gt;" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        <br />
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
