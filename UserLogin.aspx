<%@ Page Title="" Language="C#" MasterPageFile="~/BloodForLife.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Blood_For_Life.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <br />
    <br />

     <div class="container" dir="rtl">
     <div class="row">
         <div class="col-md-6 mx-auto">
             <div class="card mt-4" >   
                 <div class="card-body">  
                   <div class="row">
                         <div class="col">
                             <center>
                                 <img width="150px" src="imgs/generaluser.png" />
                                 <h3>تسجيل دخول المستخدم</h3>
                                 <hr />  
                             </center>

                         </div>
                     </div>
                 <%-- textbox--%>
                   <div class="row">
                     <div class="col">
                        <div class="form-group"> 
                 <asp:TextBox ID="user_ID" placeholder="الرقم القومى" CssClass="form-control" runat="server"></asp:TextBox>
             </div>
         </div>
     </div>
                   <div class="row">
                     <div class="col">
                        <div class="form-group"> 
                 <asp:TextBox ID="user_pass" placeholder="كلمة المرور" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
             </div>
         </div>
     </div>



                <%--usertypedropdownlist--%>
                                <div class="row">
                <div class="col">
                   <div class="form-group"> 
                       <asp:DropDownList ID="LoginDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                   </div>
                 </div>
            </div>

                  <%--button--%>


                     <div class="form-group">
                      <asp:Button ID="LogBtnclick1" class="btn btn-success btn-block" runat="server" Text="دخول" OnClick="LogBtnclick1_Click"    />
                     </div>


                     <div class="form-group">   
                         <asp:Button class="btn btn-danger btn-block" ID="Button2" runat="server" Text="تسجيل" OnClick="Button2_Click" />
                     </div>



                 </div>

             </div>
             <br />
               <a href="homepage.aspx"> "<< Back To Home" </a>
                     <br />
                     <br />

         </div>

     </div>

   

 </div>


</asp:Content>
