﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProfile.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



      <div id="post">
  
  <div class="first">
     
     <div id="text">
    your order
    </div>
  
   </div>
   
    <div id="order">
    
  

    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


         <asp:UpdatePanel ID="UpdatePanel1" runat="server">

          <ContentTemplate>
          
         

        <asp:TextBox ID="txtDescr" runat="server" Height="104px" Width="584px" 
            placeholder="write your order here" BorderStyle="None" 
            style="text-align: left" Font-Bold="True" AutoPostBack="True" 
                  TextMode="MultiLine" ></asp:TextBox>
        
       
        
   
    
    
    <div id="cam">
    
    <div id="dep">
      
     
      
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="CatNu" 
            Font-Bold="True" Height="24px" Width="109px" 
            CssClass="jumpMenu">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:askCon %>" 
            SelectCommand="SELECT [CatNu], [CatName] FROM [Follow] WHERE ([IdMem] = @IdMem2)">
            <SelectParameters>
                <asp:SessionParameter Name="IdMem2" SessionField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:Button ID="Button1" runat="server" Text="Post"
        CssClass="bu" Font-Bold="True" Font-Names="AngsanaUPC" Font-Size="X-Large" 
                           ForeColor="White" Height="30px" Width="85px" 
            BackColor="Black" onclick="Button1_Click"
         />
        <asp:TextBox ID="txtIdMem" runat="server" Visible="False"></asp:TextBox>

    </div>
    
    <a href="#">
    
    <div id="camera">
    
        
    
        <asp:FileUpload ID="PostFup" runat="server" Width="172px" />
    
    </div>

    
    <div id="makspace" >
    <asp:Label ID="lblAns" runat="server"></asp:Label>
    </div> 

   
     </ContentTemplate>

            <Triggers>
<asp:PostBackTrigger ControlID="Button1" />
</Triggers>

    </asp:UpdatePanel>

    
    </a>
     </div>
    
    </div>
    
    
    <div id="linee">
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
  </div>
  
  
  

  <div class="comment2">

  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:askCon %>" 
            SelectCommand="SELECT * FROM [Category] ORDER BY [Ordere]"></asp:SqlDataSource>

     
      

 
      <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>

     
      


 
     <asp:DataList ID="DataList1" runat="server" DataKeyField="CatNu" 
          DataSourceID="SqlDataSource3" 
          >
          <ItemTemplate> 

              <br />

             <asp:Label ID="Label1" runat="server" Text='<%# Eval("CatNu") %>' Visible="false"></asp:Label> 
              <asp:TextBox runat="server"  ID="txtnu" Text='<%# Eval("CatNu") %>' Visible ="false" ></asp:TextBox>
              

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
                  
                  

               <asp:TextBox runat="server" Text='<%# Eval("IdMem") %>' ID="txtIdp" Visible="false" ></asp:TextBox> 

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



                 <asp:SqlDataSource ID="profileimg2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:askCon %>" 
          SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)">
          <SelectParameters>
              <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
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
  
  <div class="ahmed">
     


      <asp:DataList ID="DataList6" runat="server" DataKeyField="id" 
          DataSourceID="profileimg2" >
          
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



        
        <div class="type">
        

        <!--
       <textarea placeholder="write your comment here">
       
       
       </textarea>
       -->




            <asp:TextBox ID="txtCom" runat="server" 
                Width="325px"   ></asp:TextBox>


            <asp:Button ID="Button2" runat="server" Text="Comment" CommandName="comment" CssClass="makbtn" 
            
            Font-Bold="True" Font-Names="AngsanaUPC" Font-Size="X-Large" 
                           ForeColor="White" 
            BackColor="Black" 
            
            />




        



        </div>
        
     
     
     </div>
       

      
     
 <!--    <div class="mohamed">
     

            



       
     
     
     </div> -->
     
    
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


      <asp:Button ID="Button3" runat="server" Text="X" Font-Bold="True" CssClass="makbtnCan2" CommandName = "DeleteComment" />


              </ItemTemplate>
     



      </asp:DataList> 
      

    
     
     </div>

      <br /><br /><br /><br /><br /><br /><br /><br />
  
             </ItemTemplate>
              </asp:DataList>
    
    
       
   
              
    
  
  
 
     

            </ItemTemplate>
     



      </asp:DataList> 
      

      
      

  
</div>



<asp:TextBox ID="TextBox2" runat="server" Visible="false" ></asp:TextBox>



    <asp:GridView ID="GridView1" runat="server" Visible="false">
    </asp:GridView>


    <asp:GridView ID="GridView2" runat="server" Visible="false">
    </asp:GridView>



   



</asp:Content>

