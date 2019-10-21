<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="depart2.aspx.cs" Inherits="depart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



   
      
      <div id="depart2">
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:askCon %>" 
                 SelectCommand="SELECT * FROM [Category] WHERE ([CatNu] = @CatNu)">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="CatNu" QueryStringField="catno" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
       

     <asp:DataList ID="DataList1" runat="server" DataKeyField="CatNu" 
              DataSourceID="SqlDataSource1" 
              onselectedindexchanged="DataList1_SelectedIndexChanged">
              <ItemTemplate> 
          
                 <div id="product">
      
         <div id="flw">
             
             
            
             <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" 
                 ForeColor="White" onclick="LinkButton1_Click">Follow</asp:LinkButton>
            



                   
            
            



                   
      </div> 
       
       <div id="text2">
      
      
      </div>

      <img src="upload/<%# Eval("img") %>"  height="213" width="799" > 

  

      <div id="empty">
      </div> 
      
      <a href="#">
      
      
      
      
      </a>
      
     
      
      
      </div>
      
            </ItemTemplate>
          </asp:DataList> 

          <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
          <asp:TextBox ID="txtCatName" runat="server" Visible="False"></asp:TextBox>
          <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
      
     </div>
  
  <div class="comment2">
  
   <div class="first">
    
    <div class="text2">
    The latest orders in cars
        <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
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
     
     <div class="upload">
     
     </div>
     
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





   
   
       
   
   
   



</asp:Content>

