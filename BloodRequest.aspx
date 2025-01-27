<%@ Page Title="" Language="C#" MasterPageFile="~/BloodForLife.Master" AutoEventWireup="true" CodeFile="BloodRequest.aspx.cs" Inherits="Blood_For_Life.BloodRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container mx-auto" dir="rtl">
                         <%--Name--%>
                 <div class="form-group col-md-6">
                  <label for="RequestName" dir="rtl" class="d-flex align-items-start labelFont">الاسم</label>
                  <asp:TextBox placeholder="الاسم رباعى" id="RequestName" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
                </div>

                 <%--SSN--%>
                 <div class="form-group col-md-6">
                  <label for="RequestSSN" dir="rtl" class="d-flex align-items-start labelFont">الرقم القومى</label>
                  <asp:TextBox placeholder="الرقم القومى" id="RequestSSN" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
                </div>
                 <%--phone--%>
                <div class="form-group col-md-6">
                  <label for="RequestPhone" dir="rtl" class="d-flex align-items-start labelFont">التليفون</label>
                  <asp:TextBox placeholder="التليفون" id="RequestPhone" runat="server" CssClass="form-control" TextMode="SingleLine" ></asp:TextBox>
                </div>
                 <%--Gov--%>
                 <div class="form-group col-md-6">
                <label for="GovDropDownList" dir="rtl" class="d-flex align-items-start labelFont">المحافظة</label>

                  <asp:DropDownList ID="GovDropDownList" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                 </div>

                 <%--Blood Type--%>
                 <div class="form-group col-md-6">
         <label for="BloodTypeDropDownList" dir="rtl" class="d-flex align-items-start labelFont">فصيلة الدم</label>

         <asp:DropDownList ID="BloodTypeDropDownList" CssClass="form-control"  runat="server">

         </asp:DropDownList>

         </div>

                 <%--Request Date--%>
                    <%--                 <div class="form-group col-md-6">
          <label for="DonationDate" dir="rtl" class="d-flex align-items-start labelFont"> اختر ميعاد للتبرع</label>
         <asp:TextBox  id="DonationDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>

          </div>--%>
                 
                 <%--submitBtn--%>
                 <div class="row">
                   <div class="form-group col-md-6">
                        <asp:Button ID="SubmitRequest" runat="server" class="btn btn-primary labelFont col-md-12" Text="طلب الدم " onclick="SubmitRequest_Click"  />

                   </div>

                 </div>

    </div>









</asp:Content>
