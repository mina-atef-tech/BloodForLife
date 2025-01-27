<%@ Page Title="" Language="C#" MasterPageFile="~/BloodForLife.Master" AutoEventWireup="true" CodeBehind="Donar_Registration.aspx.cs" Inherits="Blood_For_Life.Donar_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
  <div class="container" dir="rtl">

<%--     Name & SSN  --%>
  <div class="row">
    <div class="form-group col-md-6">
      <label for="DonarName" dir="rtl" class="d-flex align-items-start labelFont">الاسم</label>
      <asp:TextBox placeholder="الاسم" id="DonarName" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
    </div>

    <div class="form-group col-md-6">
      <label for="DonarSsn" dir="rtl" class="d-flex align-items-start labelFont">الرقم القومى</label>
      <asp:TextBox placeholder="الرقم القومى" id="DonarSSN" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
    </div>
  </div>

<%--    Mobile & whats--%>
  <div class="row">
    <div class="form-group col-md-6">
      <label for="DonarMob" dir="rtl" class="d-flex align-items-start labelFont">موبايل</label>
      <asp:TextBox placeholder="موبايل" id="DonarMob" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
    </div>

    <div class="form-group col-md-6">
      <label for="DonarWhats" dir="rtl" class="d-flex align-items-start labelFont"> واتس اب</label>
       <asp:TextBox placeholder="واتس اب" id="DonarWhats" runat="server" CssClass="form-control" ></asp:TextBox>
    </div>
  </div>


<%--      Address 1--%>
  <div class="row">
  <div class="form-group col-md-12 ">
    <label for="DonarAddress1" dir="rtl" class="d-flex align-items-start labelFont">عنوان 1</label>
   <asp:TextBox placeholder="عنوان 1" id="DonarAddress1" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>

  </div>
     </div>

<%--      Address 2--%>
  <div class="row">
  <div class="form-group col-md-12 ">
  <div class="form-group  ">
    <label for="DonarAddress2" dir="rtl" class="d-flex align-items-start labelFont"> عنوان 2</label>
   <asp:TextBox placeholder="عنوان 2" id="DonarAddress2" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
  </div>
</div>
      </div>

<%--      email--%>
  <div class="row">
    <div class="form-group col-md-8">
      <label for="DonarEmail" dir="rtl" class="d-flex align-items-start labelFont">الايميل</label>
           <asp:TextBox placeholder="name@example.com " id="DonarEmail" runat="server" CssClass="form-control" TextMode="Email" ></asp:TextBox>

  </div>
            <%--Age--%>
          <div class="form-group col-md-4">
          <label for="DonarAge" dir="rtl" class="d-flex align-items-start labelFont">العمر</label>
          <asp:TextBox placeholder="العمر " id="DonarAge" runat="server" CssClass="form-control" TextMode="Number" ></asp:TextBox>


          </div>

      </div>
      
<%--   age & Gender & Bloodtype--%>
   <div class="row">

      <%--Gender--%>
          <div class="col-md-4">
         <label for="DonarGender" dir="rtl" class="d-flex align-items-start labelFont">النوع</label>

         <asp:DropDownList ID="GenderDropDownList" CssClass="form-control"  runat="server"></asp:DropDownList>


           </div>

          <%--Blood Type--%>
          <div class="col-md-4">
         <label for="BloodTypeDropDownList" dir="rtl" class="d-flex align-items-start labelFont">فصيلة الدم</label>

         <asp:DropDownList ID="BloodTypeDropDownList" CssClass="form-control"  runat="server">

         </asp:DropDownList>

         </div>

           <%--LastDonationDate--%>
          <div class="form-group col-md-4">
          <label for="LastDonationDate" dir="rtl" class="d-flex align-items-start labelFont">تاريخ اخر تبرع</label>
         <asp:TextBox  id="LastDonationDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>

          </div>



      </div>

<%--      UserName & Password & RePassword--%>
     
      <div class="row">
     <%--UserName--%>
  <div class="form-group col-md-4">
    <label for="DonarUsername" dir="rtl" class="d-flex align-items-start labelFont">اسم المستخدم</label>
  <asp:TextBox placeholder="اسم المستخدم" id="DonarUsername" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>

  </div>
      <%--Password--%>
  <div class="form-group col-md-4">
    <label for="DonarPassword" dir="rtl" class="d-flex align-items-start labelFont">كلمة السر</label>
        <asp:TextBox placeholder="كلمة السر" id="DonarPassword" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>

  </div>
      <%--RePassword--%>
  <div class="form-group col-md-4">
  <label for="DonarPassword2" dir="rtl" class="d-flex align-items-start labelFont">اعاده كلمة السر</label>
 <asp:TextBox placeholder="اعاده كلمة السر" id="DonarPassword2" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>

</div>
</div>

      <br />

      <div class="container">
          <div class="row">
              <asp:Button ID="DonarSubmit" runat="server" class="btn btn-primary labelFont col-md-12" Text="تسجيل" OnClick="DonarSubmit_Click" />

          </div>
      </div>

            <br />

  
     
</div>


</asp:Content>
