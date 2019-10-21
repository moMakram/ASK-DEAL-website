<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign.aspx.cs" Inherits="sign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">





 <style type="text/css">
        .style1
        {
            width: 855px;
            margin-left: 273px;
        }
        .style3
        {
            width: 227px;
        }
        .style7
        {
            width: 346px;
            text-align: center;
        }
        .style8
        {
            width: 199px;
            text-align: center;
        }
        .style9
        {
            text-align: center;
            height: 65px;
        }
        .style10
        {
            width: 199px;
            height: 65px;
            text-align: left;
        }
        .style11
        {
            width: 227px;
            height: 65px;
        }
        .style12
        {
            width: 346px;
            text-align: center;
            height: 51px;
        }
        .style13
        {
            width: 199px;
            height: 51px;
            text-align: left;
        }
        .style14
        {
            width: 227px;
            height: 51px;
        }
        .style15
        {
            width: 346px;
            text-align: center;
            height: 68px;
        }
        .style16
        {
            width: 199px;
            height: 68px;
            text-align: left;
        }
        .style17
        {
            width: 227px;
            height: 68px;
        }
        .style21
        {
            width: 346px;
            text-align: center;
            height: 54px;
        }
        .style22
        {
            width: 199px;
            height: 54px;
            text-align: left;
        }
        .style23
        {
            width: 227px;
            height: 54px;
        }
        .style24
        {
            width: 346px;
            text-align: center;
            height: 58px;
        }
        .style25
        {
            width: 199px;
            height: 58px;
            text-align: left;
        }
        .style26
        {
            width: 227px;
            height: 58px;
        }
        .style27
        {
            width: 346px;
            text-align: center;
            height: 53px;
        }
        .style28
        {
            width: 199px;
            height: 53px;
            text-align: left;
        }
        .style29
        {
            width: 227px;
            height: 53px;
        }
        .style30
        {
            width: 346px;
            text-align: center;
            height: 52px;
        }
        .style31
        {
            width: 199px;
            height: 52px;
            text-align: left;
        }
        .style32
        {
            width: 227px;
            height: 52px;
        }
        .style33
        {
            width: 346px;
            text-align: center;
            height: 61px;
        }
        .style34
        {
            width: 199px;
            height: 61px;
            text-align: left;
        }
        .style35
        {
            width: 227px;
            height: 61px;
        }
    .style36
    {
        text-align: center;
        height: 23px;
    }
    </style>






</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div id="sign">
     
   
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
                <table class="style1">
                    <tr>
                        <td class="style36" colspan="3" style="text-align: center">
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="text-align: center">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                Font-Strikeout="False" Text="First Name :"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtFirst" runat="server" Height="29px" 
                                ontextchanged="TextBox1_TextChanged" Width="290px" placeholder="username"></asp:TextBox>
                        </td>
                        <td class="style11">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtFirst" ErrorMessage="insert your name" 
                                ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Last  Name :"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:TextBox ID="txtLast" runat="server" Height="29px" 
                                ontextchanged="TextBox1_TextChanged" Width="290px" placeholder="last name"></asp:TextBox>
                        </td>
                        <td class="style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtLast" ErrorMessage="insert your last name" 
                                ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Gender  :"></asp:Label>
                        </td>
                        <td class="style16">
                            <asp:TextBox ID="txtGender" runat="server" Height="30px" Width="280px" placeholder="Gender"></asp:TextBox>
                        </td>
                        <td class="style17">
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Date Of Birth  :"></asp:Label>
                        </td>
                        <td class="style22">
                            <asp:TextBox ID="txtDate" runat="server" Height="29px" 
                                ontextchanged="TextBox1_TextChanged" Width="290px" placeholder="Date of Birth"></asp:TextBox>
                        </td>
                        <td class="style23">
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Address  :"></asp:Label>
                        </td>
                        <td class="style8">
                            <asp:TextBox ID="txtAddress" runat="server" Height="49px" 
                                ontextchanged="TextBox1_TextChanged" Width="290px" placeholder="Address"></asp:TextBox>
                        </td>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style24">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Mobile  :"></asp:Label>
                        </td>
                        <td class="style25">
                            <asp:TextBox ID="txtMobile" runat="server" Height="29px" 
                                ontextchanged="TextBox1_TextChanged" Width="290px" placeholder="Mobile"></asp:TextBox>
                        </td>
                        <td class="style26">
                        </td>
                    </tr>
                    <tr>
                        <td class="style27">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Phone  :"></asp:Label>
                        </td>
                        <td class="style28">
                            <asp:TextBox ID="txtPhone" runat="server" Height="31px" 
                                ontextchanged="TextBox1_TextChanged" Width="290px" placeholder="Phone"></asp:TextBox>
                        </td>
                        <td class="style29">
                        </td>
                    </tr>
                    <tr>
                        <td class="style30">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Mail  :"></asp:Label>
                        </td>
                        <td class="style31">
                            <asp:TextBox ID="txtMail" runat="server" Height="29px" 
                                ontextchanged="TextBox1_TextChanged" Width="290px" placeholder="Mail"></asp:TextBox>
                        </td>
                        <td class="style32">
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Password  :"></asp:Label>
                        </td>
                        <td class="style34">
                            <asp:TextBox ID="txtPass" runat="server" Height="29px" 
                                ontextchanged="TextBox1_TextChanged" TextMode="Password" Width="273px" placeholder="Password"></asp:TextBox>
                        </td>
                        <td class="style35">
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                style="text-align: center" Text="Your Photo  :"></asp:Label>
                        </td>
                        <td class="style8">
                            <asp:FileUpload ID="fup" runat="server" Height="22px" Width="255px" />
                            <asp:Label ID="lblAns" runat="server"></asp:Label>
                        </td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                </table>
              
                   <div id="signup">
   
    
     
     
    
     
                       <asp:Button ID="Button1" runat="server"  Text="Sign Up" BackColor="Black" 
                           onclick="Button1_Click1"  CssClass="bu" Font-Bold="True" Font-Names="AngsanaUPC" Font-Size="X-Large" 
                           ForeColor="White" Height="36px" Width="85px"
                           ValidationGroup="g1" />
   
   

     
     

     
   
 
   </div> 
            </ContentTemplate>

            <Triggers>
<asp:PostBackTrigger ControlID="Button1" />
</Triggers>

        </asp:UpdatePanel>
     
   
   <br /> 
     
    
     
     
     
   
 
   </div> 


</asp:Content>

