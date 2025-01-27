<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Dashboard.Master" AutoEventWireup="true" CodeBehind="AdminAddUser.aspx.cs" Inherits="Blood_For_Life.DashBoard.AdminAddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container" dir="rtl">
              <div class="row">
    <div class="col-md-6 mx-auto">
        <div class="card mt-4" >   
            <div class="card-body m-3">  

                <%--UserType--%>
                <div class="row">
                     <label for="AdminAddUserDropDownList" dir="rtl" class="d-flex align-items-start labelFont">المستخدم</label>

                     <asp:DropDownList ID="AdminAddUserDropDownList" CssClass="form-control" runat="server" ></asp:DropDownList>
              </div>

               <%--Name--%>
                <div class="row">
           <label for="UserName" dir="rtl" class="d-flex align-items-start labelFont">الاسم</label>
           <asp:TextBox placeholder="الاسم" id="UserName" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>

                </div>

                <%--SSN--%>
                <div class="row">
                    
                <label for="UserSSN" dir="rtl" class="d-flex align-items-start labelFont">الرقم القومى</label>
                <asp:TextBox placeholder="الرقم القومى" id="UserSSN" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
                </div>

                <%--Mobile--%>
                <div class="row">
    <label for="UserMob" dir="rtl" class="d-flex align-items-start labelFont">موبايل</label>
    <asp:TextBox placeholder="موبايل" id="UserMob" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
                </div>

                <%--Password--%>
                <div class="row">
             <label for="UserPassword" dir="rtl" class="d-flex align-items-start labelFont">كلمة السر</label>
             <asp:TextBox placeholder="كلمة السر" id="UserPassword" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>

                    
                </div>

                <div class="row">
                    <br />
                </div>

                <%--Search--%>
                <div class="row">
                    <div class="col-md-6">
                   <asp:Button class="btn btn-info btn-block" ID="SearchBtn" onclick="SearchBtn_Click" runat="server" Text="بحث"   />
                    </div>

                    <div class="col-md-6">
                        <asp:TextBox placeholder="ادخل الرقم القومى" CssClass="form-control" ID="SearchTxt" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>


                </div>

                <%--Button--%>
                <div class="row mt-3">

                    <%--add--%>
                <div class="col-md-4">
               <asp:Button class="btn btn-success btn-block" ID="AddUserBtn" runat="server" onclick="AddUserBtn_Click" Text="اضافة"  />

                    <div class="row">
                            <asp:TextBox placeholder="test" id="test" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>

                    </div>


                </div>


                    <%--Edit--%>
                 <div class="col-md-4">
                    <asp:Button class="btn btn-warning btn-block" ID="EdirBtn" OnClick="EdirBtn_Click" runat="server" Text="تعديل"  />
      
                    </div>

                    <%--Delete--%>
                 <div class="col-md-4">
                <asp:Button class="btn btn-danger btn-block" ID="DeleteBtn" OnClick="DeleteBtn_Click" runat="server" Text="حذف"   />
                 </div>
                 </div>



                </div>


                
        </div>

</div>


  </div>

 </div>
</asp:Content>
