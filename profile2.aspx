<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProfile.master" AutoEventWireup="true" CodeFile="profile2.aspx.cs" Inherits="profile2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 1063px;
            width: 678px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    
    <div id="profile">
       
  
       
         <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
       

       <br /> <br />
       
      <a href="profile1.aspx">
         
         
         </a>
         <div id="Content">
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                      <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                      <br />
                          <asp:View ID="View1" runat="server">
                              <article>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:askConnectionString %>" 
                                  SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2" 
                                  onselectedindexchanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    

                      <div id="pic">
                      <img src="upload/<%# Eval("img") %>"  height="161" width="188" style="border-radius:190px;" > 
       </div>


       <br /><br />
       <div id="about" >About</div>

       <center>
                        First name   : <%#Eval("firstname") %>
                        <br />
                        <br />
                        Last name    : <%#Eval("lastname") %>
                        <br />
                        <br />
                        Gender       : <%#Eval("gender") %>
                        <br />
                        <br />
                        Date of Birth: <%#Eval("birthdate") %>
                        <br />
                        <br />
                        Adress       : <%#Eval("address") %>
                        <br />
                        <br />
                        Mobile       : <%#Eval("mobile") %>
                        <br />
                        <br />
                        Phone        : <%#Eval("phone") %>
                        <br />
                        <br />
                        Mail         : <%#Eval("mail") %>
                        <br />
                        <br />
                        Password     : <%#Eval("password") %>
                    </center>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </article>
                 
                  <br />
                  <center>
                              <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                              CssClass="bu" Font-Bold="True" Font-Names="AngsanaUPC" Font-Size="X-Large" 
                           ForeColor="White" Height="36px" Width="85px" BackColor="Black" 
                              
                              />
                              </center>
                 <br />
                          </asp:View>
                          <center>
                          <asp:View ID="View2" runat="server">
                          <br /><br />
                          <center>
                              <table class="style1">
                                  <tr>
                                      <td class="style36" colspan="3" style="text-align: center">
                                          <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="style9" style="text-align: center">
                                          <asp:Label ID="Label11" runat="server" Text="Id" Visible="False"></asp:Label>
                                      </td>
                                      <td class="style10">
                                          <asp:TextBox ID="txtId" runat="server" Height="29px" 
                                              ontextchanged="TextBox1_TextChanged" placeholder="username" 
                                              Width="290px" Visible="False"></asp:TextBox>
                                      </td>
                                      <td class="style11">
                                          &nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td class="style9" style="text-align: center">
                                          <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                              Font-Strikeout="False" Text="First Name :"></asp:Label>
                                      </td>
                                      <td class="style10">
                                          <asp:TextBox ID="txtFirst" runat="server" Height="29px" 
                                              ontextchanged="TextBox1_TextChanged" placeholder="username" Width="290px"></asp:TextBox>
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
                                              ontextchanged="TextBox1_TextChanged" Width="290px"></asp:TextBox>
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
                                          <asp:TextBox ID="txtGender" runat="server" Height="30px" Width="280px"></asp:TextBox>
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
                                              ontextchanged="TextBox1_TextChanged" Width="290px"></asp:TextBox>
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
                                              ontextchanged="TextBox1_TextChanged" Width="290px"></asp:TextBox>
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
                                              ontextchanged="TextBox1_TextChanged" Width="290px"></asp:TextBox>
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
                                              ontextchanged="TextBox1_TextChanged" Width="290px"></asp:TextBox>
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
                                              ontextchanged="TextBox1_TextChanged" Width="290px"></asp:TextBox>
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
                                          <asp:TextBox ID="txtPass" runat="server" Width="283px"></asp:TextBox>
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
                                          <asp:FileUpload ID="FileUpload2" runat="server" Height="22px" />
                                      </td>
                                      <td class="style3">
                                          &nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td class="style7">
                                          &nbsp;</td>
                                      <td class="style8">
                                          &nbsp;</td>
                                      <td class="style3">
                                          &nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td class="style7">
                                          <asp:GridView ID="grdUpdate" runat="server" Visible="False" Width="166px">
                                          </asp:GridView>
                                      </td>
                                      <td class="style8">
                                          <asp:Button ID="Button2" runat="server" Text="Save" onclick="Button2_Click" 
                                          ForeColor="White" Height="36px" Width="85px"
                                          CssClass="bu" Font-Bold="True" Font-Names="AngsanaUPC" Font-Size="X-Large" 
                                          BackColor="Black"  />
                                      </td>
                                      <td class="style3">
                                          <asp:Button ID="Button3" runat="server" Text="Cancel" onclick="Button3_Click" 
                                          ForeColor="White" Height="36px" Width="85px"
                                          CssClass="bu" Font-Bold="True" Font-Names="AngsanaUPC" Font-Size="X-Large" 
                                          BackColor="Black"
                                          
                                          />
                                      </td>
                                  </tr>
                              </table>
                              </center>
                          </asp:View>
                          </center>
                      </asp:MultiView>
                  </ContentTemplate>
              </asp:UpdatePanel>
       </div>
              
       
      <div class="comment2">
  
   <div class="first">
    
    <div class="text2">
    The latest orders in cars
    </div>
    
    </div>
    
     <div class="staus">
     
     <div class="pic">
     
     </div>

       
       
     
     <div class="name">
     
     <article>
     eslam salah
     </article>
     
     </div>
     
     <div class="s">
     
     <article>
     I want to buy a car?? what should i do!
     </article>
     
     </div>
  
  </div>
  
  <div class="use">
    
      <ul>
  <li >

  <a href="#like">   <span id="sprytrigger1">
   
  <div class="like">
  </div>
  
  </span></a>
  </li>
  
  
  
<li >

<a href="#news">
<span id="sprytrigger2">

<div class="share">
</div>

</span> </a></li>



  <li><a href="#comment">
  
  <span id="sprytrigger3">
  
  <div class="comment">
</div>
  
  </span> </a></li>
  
  
  
  <li ><a href="#cancel">
  
  <span id="sprytrigger4">
  
  <div class="cancel">
  </div>
  
  </span> </a></li>
  
  
  <li ><a href="#ask">
  <span id="sprytrigger5">
  
  <div class="ask">
  </div>
  
  </span> </a></li>
      </ul>
   
    </div>
     <div class="line">
       
     </div>
     
     <div class="friends">
     
     <div class="ahmed">
     
        <div class="pic2">
        
        </div>
        
        <div class="name2">
        Ahmed hegazy
        </div>
        
        <div class="type">
        
       <textarea placeholder="write your comment here">
       
       
       </textarea>
        </div>
        
     
     
     </div>
     
     <div class="mohamed">
     
       <div class="pic3">
       
       </div>
       
       <div class="name3">
       Mohamed
       </div>
       
       <div class="type2">
       you can go to acar company and take a look 
       </div>
     
     
     </div>
     
     <div class="mohamed">
     
       <div class="pic3">
       
       </div>
       
       <div class="name3">
       Mohamed
       </div>
       
       <div class="type2">
       you can go to acar company and take a look 
       </div>
     
     
     </div>
     
     </div>

</div> 

<div class="comment2">
  
   <div class="first">
    
    <div class="text2">
    The latest orders in cars
    </div>
    
    </div>
    
     <div class="staus">
     
     <div class="pic">
     
     </div>
     
     <div class="name">
     
     <article>
     eslam salah
     </article>
     
     </div>
     
     <div class="s">
     
     <article>
     I want to buy a car?? what should i do!
     </article>
     
     </div>
  
  </div>
  
  <div class="use">
    
      <ul>
  <li >

  <a href="#like">   <span id="sprytrigger1">
   
  <div class="like">
  </div>
  
  </span></a>
  </li>
  
  
  
<li >

<a href="#news">
<span id="sprytrigger2">

<div class="share">
</div>

</span> </a></li>



  <li><a href="#comment">
  
  <span id="sprytrigger3">
  
  <div class="comment">
</div>
  
  </span> </a></li>
  
  
  
  <li ><a href="#cancel">
  
  <span id="sprytrigger4">
  
  <div class="cancel">
  </div>
  
  </span> </a></li>
  
  
  <li ><a href="#ask">
  <span id="sprytrigger5">
  
  <div class="ask">
  </div>
  
  </span> </a></li>
      </ul>
   
    </div>
     <div class="line">
       
     </div>
     
     <div class="friends">
     
     <div class="ahmed">
     
        <div class="pic2">
        
        </div>
        
        <div class="name2">
        Ahmed hegazy
        </div>
        
        <div class="type">
        
       <textarea placeholder="write your comment here">
       
       
       </textarea>
        </div>
        
     
     
     </div>
     
     <div class="mohamed">
     
       <div class="pic3">
       
       </div>
       
       <div class="name3">
       Mohamed
       </div>
       
       <div class="type2">
       you can go to acar company and take a look 
       </div>
     
     
     </div>
     
     <div class="mohamed">
     
       <div class="pic3">
       
       </div>
       
       <div class="name3">
       Mohamed
       </div>
       
       <div class="type2">
       you can go to acar company and take a look 
       </div>
     
     
     </div>
     
     </div>

</div>
       
       
     
   </div>







</asp:Content>

