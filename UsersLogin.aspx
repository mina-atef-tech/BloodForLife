<%@ Page Title="" Language="C#" MasterPageFile="~/BloodForLife.Master" AutoEventWireup="true" CodeFile="UsersLogin.aspx.cs" Inherits="Blood_For_Life.UsersLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    br
       <div class="container" dir="rtl">
       <div class="row">
           <div class="col-md-6 mx-auto">
               <div class="card mt-4" >   
                   <div class="card-body">  
                     <div class="row">
                           <div class="col">
                               <center>
                                   <img width="150px" src="img/generaluser.png" />
                                   <h3>تسجيل دخول المستخدم</h3>
                                   <hr />  
                               </center>

                           </div>
                       </div>
                   <%-- textbox--%>
                     <div class="row">
                       <div class="col">
                          <div class="form-group"> 
                   <asp:TextBox ID="UserSSN" placeholder="الرقم القومى" CssClass="form-control" runat="server"></asp:TextBox>
               </div>
           </div>
       </div>
                     <div class="row">
                       <div class="col">
                          <div class="form-group"> 
                   <asp:TextBox ID="UserPass" placeholder="كلمة المرور" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
               </div>
           </div>
       </div>

                    <%--button--%>
                       <div class="form-group">   
                           <asp:Button class="btn btn-success btn-block" ID="LogBTN" runat="server" Text="دخول" onclick="LogBTN_Click" />
                       </div>

                       <div class="form-group">   
                           <asp:Button class="btn btn-danger btn-block" ID="SignBTN" runat="server" Text="تسجيل" onclick="SignBTN_Click"/>
                       </div>



                   </div>

               </div>
           </div>

       </div>

     

   </div>
</asp:Content>
