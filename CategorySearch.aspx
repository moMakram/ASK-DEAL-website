<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CategorySearch.aspx.cs" Inherits="CategorySearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 781px;
        }
        .style2
        {
            width: 662px;
            height: 473px;
        }
        .style5
        {
            height: 73px;
        }
        .style4
        {
            text-align: left;
        }
        .style3
        {
            width: 172px;
        }
        .style7
        {
            text-align: center;
            height: 30px;
        }
        .style6
        {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <br />
                    <asp:View ID="View1" runat="server">
                        <table align="center" border="5" class="style1">
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Names="Impact" Font-Overline="True" Font-Size="XX-Large" 
                                        Font-Underline="True" 
                                        style="text-align: center; font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: xx-large" 
                                        Text="Search For Products Categories"></asp:Label>
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
                                        <asp:ListItem Value="Ordere">Order</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="CatName">Category Name</asp:ListItem>
                                        <asp:ListItem Value="CatDesc">Category descripe</asp:ListItem>
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
                                    <asp:Button ID="btnAdd" runat="server" Font-Bold="True" Height="35px" 
                                        onclick="btnAdd_Click" Text="Add New" />
                                    <asp:Button ID="btnUpdate" runat="server" Enabled="False" Font-Bold="True" 
                                        Height="35px" onclick="btnUpdate_Click" Text="Update" />
                                    <asp:Button ID="btnRemove" runat="server" Font-Bold="True" Height="34px" 
                                        onclick="btnRemove_Click" Text="Remove" />
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
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                    </center>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table align="center" class="style2">
                            <tr>
                                <td class="style5" colspan="5">
                                    <asp:Label ID="lblTitle" runat="server" Font-Bold="False" Font-Names="Impact" 
                                        Font-Size="X-Large" Text="Products Category"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblCatNu" runat="server" Font-Bold="True" Font-Size="Large" 
                                        Text="Category Number"></asp:Label>
                                </td>
                                <td class="style4" colspan="2">
                                    <asp:TextBox ID="txtCatNu" runat="server" ontextchanged="txtCatNu_TextChanged"></asp:TextBox>
                                </td>
                                <td style="text-align: center">
                                    &nbsp;</td>
                                <td class="style3" rowspan="7" style="text-align: center">
                                    <asp:Image ID="Image1" runat="server" Width="158px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                                        Text="Order"></asp:Label>
                                </td>
                                <td class="style4" colspan="2">
                                    <asp:TextBox ID="txtOrder" runat="server"></asp:TextBox>
                                </td>
                                <td style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                                        Text="Category Name"></asp:Label>
                                </td>
                                <td class="style4" colspan="2">
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                                        Text="Category Descripe"></asp:Label>
                                </td>
                                <td class="style4" colspan="2">
                                    <asp:TextBox ID="txtDesc" runat="server" Height="51px" TextMode="MultiLine" 
                                        Width="233px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                                        Text="Image"></asp:Label>
                                </td>
                                <td class="style4" colspan="2">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style7" colspan="4">
                                    <asp:Label ID="lblAns" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6" colspan="2">
                                    <asp:Button ID="btnSave" runat="server" Font-Bold="True" Height="31px" 
                                        onclick="btnSave_Click" Text="save" ValidationGroup="g2" Width="57px" />
                                </td>
                                <td colspan="2" style="text-align: left">
                                    <asp:Button ID="btnCancel" runat="server" Font-Bold="True" Height="33px" 
                                        onclick="btnCancel_Click" Text="Cancel" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6" colspan="4">
                                      <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                        <ProgressTemplate>
                                            loading....
                                        </ProgressTemplate>
                                    </asp:UpdateProgress> 
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                </asp:MultiView>
                
            </ContentTemplate>

                        <Triggers>
<asp:PostBackTrigger ControlID="btnSave" />



</Triggers>

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
