<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostsSearch.aspx.cs" Inherits="CategorySearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <link href="css/style.css" rel="stylesheet" type="text/css" />

           

<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryTooltip.css" rel="stylesheet" type="text/css" />
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="SpryAssets/SpryTooltip.js" type="text/javascript"></script>
<script type="text/javascript">
    function MM_jumpMenu(targ, selObj, restore) { //v3.0
        eval(targ + ".location='" + selObj.options[selObj.selectedIndex].value + "'");
        if (restore) selObj.selectedIndex = 0;
    }
</script>


    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            width: 781px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
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
                                        <asp:ListItem Value="CatNU">category number</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="CatName">Category Name</asp:ListItem>
                                        <asp:ListItem Value="Ordere">Order</asp:ListItem>
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
                                    &nbsp;</td>
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
                                   
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    
                                    <asp:DataList ID="DataList1" runat="server"  DataKeyField="CatNu" 
                                  >

                                        <ItemTemplate>



                                        

              <br />

             <asp:Label ID="Label1" runat="server" Text='<%# Eval("CatNu") %>' Visible="false"></asp:Label> 
              <asp:TextBox runat="server"  ID="txtnu" Text='<%# Eval("CatNu") %>' Visible = "false"></asp:TextBox>
              

               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:askCon %>" 
          SelectCommand="SELECT * FROM [Post] WHERE ([CatNu] = @CatNu)">
          <SelectParameters>
              <asp:ControlParameter ControlID="txtnu" Name="CatNu" PropertyName="Text" 
                  Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>
             

             <div class="first">
    
    <div class="text2">
        
    The latest orders in <%# Eval("CatName") %>
   


    </div>
    
    </div>
    
      <asp:DataList ID="DataList2" runat="server" DataKeyField="id" 
          DataSourceID="SqlDataSource2" OnItemCommand="DataList2_ItemCommand">
                 

                  <ItemTemplate> 
                  
                  

               <asp:TextBox runat="server" Text='<%# Eval("IdMem") %>' ID="txtIdp" Visible="false"></asp:TextBox> 

                      <asp:TextBox ID="txtidpost" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:TextBox>  

                     <asp:TextBox runat="server"  ID="txtcaten" Text='<%# Eval("CatNu") %>' Visible="false"></asp:TextBox>




                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:askCon %>" 
                          SelectCommand="SELECT * FROM [Comment] WHERE ([IdPost] = @IdPost)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="txtidpost" Name="IdPost" PropertyName="Text" 
                                  Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>





                  <asp:SqlDataSource ID="profileimg" runat="server" 
          ConnectionString="<%$ ConnectionStrings:askCon %>" 
          SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)">
          <SelectParameters>
              <asp:ControlParameter ControlID="txtIdp" Name="id" PropertyName="Text" 
                  Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>


                      <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:askCon %>" 
                          SelectCommand="SELECT * FROM [likes] WHERE ([IdPost] = @IdPost)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="txtidpost" Name="IdPost" PropertyName="Text" 
                                  Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>

                      
      <div class="staus">
          <asp:DataList ID="DataList5" runat="server" DataKeyField="id" 
              DataSourceID="SqlDataSource6">
              <ItemTemplate>
               Test Count:   
              </ItemTemplate>
          </asp:DataList>

    




  
         <asp:DataList ID="DataList4" runat="server" DataKeyField="id" 
          DataSourceID="profileimg" >
          <ItemTemplate>
        

             <div class="pic">
     <img src="upload/<%# Eval("img") %>"  height="38" width="41" >
     </div> 
     
     <div class="name">
     
     <article>
         <%# Eval("firstname") %>
     </article>
     
     </div>

     
          </ItemTemplate>
      </asp:DataList>

     

        <asp:Button ID="Button3" runat="server" Text="X" Font-Bold="True" CssClass="makbtnCan" CommandName = "DeletePost" />
      



  
     
     <div class="s">
     
     <article>
         <%# Eval("descr") %>
     </article>
     
     </div> 
  

  <div class="use">
    
      <ul>
  <li >

  <a href="#like">   <span id="sprytrigger1">
   
  <div class="like2">
   <asp:LinkButton ID="LinkButton1" runat="server" CssClass="like3" CommandName="like"></asp:LinkButton>
      
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



  </div>

   
     <div class="line">
       
     </div>
     
     <div class="friends">
     
     
       

      
     
  
     
    
              <asp:DataList ID="DataList4Com" runat="server" DataSourceID="SqlDataSource4" 
             DataKeyField="id" OnItemCommand="DataList4_ItemCommand">

         <ItemTemplate>

             <asp:TextBox ID="IdMPost" runat="server" Text='<%#Eval("IdMem") %>' Visible="false"></asp:TextBox>
             <asp:TextBox ID="IdCom" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:TextBox>

             <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:askCon %>" 
                 SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="IdMPost" Name="id" PropertyName="Text" 
                         Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>


   <div class="mohamed">
     


   


       <asp:DataList ID="DataList3" runat="server" DataKeyField="id" 
           DataSourceID="SqlDataSource5">
           <ItemTemplate>
       <div class="pic">
        <img src="upload/<%# Eval("img") %>"  height="38" width="41" >
       </div>

           <div class="name3">
       <%# Eval("firstname") %>
       </div>
    
           </ItemTemplate>
       </asp:DataList>
   
       



       <div class="type2">
       <%#Eval("descr") %>
       </div>
     
     
     </div>



      <asp:Button ID="Button1" runat="server" Text="X" Font-Bold="True" CssClass="makbtnCan2" CommandName = "DeleteComment" />



              </ItemTemplate>
     



      </asp:DataList> 
      

     
     
     </div>

      <br /><br /><br /><br /><br /><br /><br /><br />
  
             </ItemTemplate>
              </asp:DataList>
    
    







                                                   </ItemTemplate>



                                    </asp:DataList>








                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>



    <asp:GridView ID="GridView1" runat="server" Visible="True">
    </asp:GridView>


    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>


    </form>
    <p>
        &nbsp;</p>
</body>
</html>
