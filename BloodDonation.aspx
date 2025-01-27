<%@ Page Title="" Language="C#" MasterPageFile="~/BloodForLife.Master" AutoEventWireup="true" CodeFile="BloodDonation.aspx.cs" Inherits="Blood_For_Life.BloodDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />


    <div class="container" dir="rtl">


                                 <%--Name--%>
                 <div class="form-group col-md-6">
                  <label for="DonarName" dir="rtl" class="d-flex align-items-start labelFont">الاسم</label>
                  <asp:TextBox placeholder="الاسم رباعى" id="DonarName" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
                </div>

                 <%--SSN--%>
                 <div class="form-group col-md-6">
                  <label for="DonarSSN" dir="rtl" class="d-flex align-items-start labelFont">الرقم القومى</label>
                  <asp:TextBox placeholder="الرقم القومى" id="DonarSSN" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
                </div>
                      <%--Blood Type--%>
          <div class="form-group col-md-6">
         <label for="BloodTypeDropDownList" dir="rtl" class="d-flex align-items-start labelFont">فصيلة الدم</label>

         <asp:DropDownList ID="BloodTypeDropDownList" CssClass="form-control"  runat="server">

         </asp:DropDownList>

         </div>

           <%--DonationDate--%>
          <div class="form-group col-md-6">
          <label for="DonationDate" dir="rtl" class="d-flex align-items-start labelFont"> اختر ميعاد للتبرع</label>
         <asp:TextBox  id="DonationDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>

          </div>


       <%--Governorate--%>
    <div class="form-group col-md-6">
            <div>
                   <label for="GovDropDownList" dir="rtl" class="d-flex align-items-start labelFont">المحافظة</label>

                     <asp:DropDownList ID="GovDropDownList" CssClass="form-control" OnSelectedIndexChanged="GovDropDownList_SelectedIndexChanged"   runat="server" AutoPostBack="True"></asp:DropDownList>

            </div>
        </div>


  <%--Place--%>
    <div class="form-group col-md-6">
            <div>
                   <label for="PlaceDropDownList" dir="rtl" class="d-flex align-items-start labelFont">المكان</label>

                     <asp:DropDownList ID="PlaceDropDownList"  CssClass="form-control"  runat="server" AutoPostBack="True"></asp:DropDownList>


            </div>
        </div>

     <%--PhoneNumber--%>
    <div class="row">
<div class="form-group col-md-6">
  <label for="DonarMob" dir="rtl" class="d-flex align-items-start labelFont">موبايل</label>
  <asp:TextBox placeholder="موبايل" id="DonarMob" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
</div>
    </div>

             <%--submitBtn--%>
               <div class="row">
                   <div class="form-group col-md-6">
                        <asp:Button ID="SubmitDonation" runat="server" class="btn btn-primary labelFont col-md-12" Text="تسجيل ميعاد التبرع" OnClick="SubmitDonation_Click"  />

                   </div>

                 </div>

    </div>


    <br />
    


</asp:Content>
