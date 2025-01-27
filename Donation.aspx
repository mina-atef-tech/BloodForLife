<%@ Page Title="" Language="C#" MasterPageFile="~/BloodForLife.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="Blood_For_Life.Donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="container" dir="rtl">

         <%--Governorate--%>
          <div class="form-group col-md-6">
                  <div>
                     <div class="row">
                         <label for="GovDropDownList" dir="rtl" class="d-flex align-items-start labelFont">المحافظة</label>

                           <asp:DropDownList ID="GovDropDownList" CssClass="form-control" OnSelectedIndexChanged="GovDropDownList_SelectedIndexChanged"   runat="server" AutoPostBack="True"></asp:DropDownList>


                        </div>
                  </div>
              </div>


        <%--Place--%>
          <div class="form-group col-md-6">
                  <div>
                     <div class="row">
                         <label for="PlaceDropDownList" dir="rtl" class="d-flex align-items-start labelFont">المكان</label>

                           <asp:DropDownList ID="PlaceDropDownList" OnSelectedIndexChanged="PlaceDropDownList_SelectedIndexChanged" CssClass="form-control"  runat="server" AutoPostBack="True"></asp:DropDownList>


                        </div>
                  </div>
              </div>


        <%-- Address and phone --%>
          <div class="row">
          <asp:Label ID="AddressLabel"  dir="rtl" CssClass="form-control" runat="server" Text="العنوان"></asp:Label>
          <asp:TextBox ID="AddressTxt" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
          </div>

          <br />
          <br />


          <div class="row">
          <asp:Label ID="phoneLabel1" dir="rtl" CssClass="form-control"  runat="server" Text="التليفون"></asp:Label>
          <asp:TextBox ID="Phonetxt" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
          </div>

          </div>



</asp:Content>
