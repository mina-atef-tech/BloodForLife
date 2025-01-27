<%@ Page Title="" Language="C#" MasterPageFile="BloodBank.Master" AutoEventWireup="true" Inherits="Blood_For_Life.Blood_Bank.BloodDonationLog" CodeFile="BloodDonationLog.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <center>
        <div class="container m-auto" dir="rtl">
        <br />
        <br />
        <br />
        <br />
    <asp:GridView ID="UserViewHistory" class="table table-bordered table-striped" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" Width="1073px" Height="540px">
        <Columns>
            <asp:BoundField DataField="DonarName" HeaderText="DonarName" SortExpression="DonarName" />
            <asp:BoundField DataField="DonarSSN" HeaderText="DonarSSN" SortExpression="DonarSSN" />
            <asp:BoundField DataField="BloodType" HeaderText="BloodType" SortExpression="BloodType" />
            <asp:BoundField DataField="DonationDate" HeaderText="DonationDate" SortExpression="DonationDate" />
            <asp:BoundField DataField="DonationGov" HeaderText="DonationGov" SortExpression="DonationGov" />
            <asp:BoundField DataField="DonationPlace" HeaderText="DonationPlace" SortExpression="DonationPlace" />
            <asp:BoundField DataField="DonationUserPhone" HeaderText="DonationUserPhone" SortExpression="DonationUserPhone" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BloodForLifeConnectionString %>" SelectCommand="SELECT [DonarName], [DonarSSN], [BloodType], [DonationDate], [DonationGov], [DonationPlace], [DonationUserPhone], [Status] FROM [DonationTB]"></asp:SqlDataSource>

    </div>
</center>

                     <div class="row">
                   <div class="form-group col-md-6">
                        <asp:Button ID="SubmitRequest" runat="server" class="btn btn-primary labelFont col-md-12" Text="طلب الدم "   />

                   </div>

                 </div>
</asp:Content>