<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="depart.aspx.cs" Inherits="depart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div id="departs">
   
   
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:askCon %>" 
            SelectCommand="SELECT * FROM [Category] ORDER BY [Ordere]">
        </asp:SqlDataSource>
   


   
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CatNu" 
            DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" 
            RepeatColumns="3">
            <ItemTemplate>
                <div class="depart">
   
   <div class="text4">
      
      <article>
      <%# Eval("CatName") %>
      </article>
      
      </div>
   
   
      <div class="car">
      <a href="depart2.aspx?catno=<%# Eval("CatNu") %>&&CatName=<%# Eval("CatName") %>">
      <img src="upload/<%# Eval("img") %>"  height="194" width="259" >
      </a>
<div class="empty">
</div> 
      <!--
     <a href="depart2.html">
      
      <div class="follow">
      </div> 
      
      </a>
      -->
      </div>
   
   </div>
   <br />
            </ItemTemplate>
        </asp:DataList>
   


   
   
   
   
   
   
   <!--
   
   
   <div class="depart">
   
   <div class="text4">
      
      <article>
      Cars
      </article>
      
      </div>
   
   
      <div class="car">

<div class="empty">
</div>
      
     <a href="#">
      
      <div class="follow">
      </div>
      
      </a>
      
      </div>
   
   </div>
   
   
   <div class="depart">
   
   <div class="text4">
      
      <article>
      Cars
      </article>
      
      </div>
   
   
      <div class="car">

<div class="empty">
</div>
      
     <a href="#">
      
      <div class="follow">
      </div>
      
      </a>
      
      </div>
   
   </div>
   
   <div class="depart">
   
   <div class="text4">
      
      <article>
      Cars
      </article>
      
      </div>
   
   
      <div class="car">

<div class="empty">
</div>
      
     <a href="#">
      
      <div class="follow">
      </div>
      
      </a>
      
      </div>
   
   </div>
   
   <div class="depart">
   
   <div class="text4">
      
      <article>
      Cars
      </article>
      
      </div>
   
   
      <div class="car">

<div class="empty">
</div>
      
     <a href="#">
      
      <div class="follow">
      </div>
      
      </a>
      
      </div>
   
   </div> -->
   
   
   
   
   
   
   
   </div>
   




</asp:Content>

