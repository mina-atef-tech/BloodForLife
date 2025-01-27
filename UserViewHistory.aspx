<%@ Page Title="" Language="C#" MasterPageFile="~/BloodForLife.Master" AutoEventWireup="true" CodeBehind="UserViewHistory.aspx.cs" Inherits="Blood_For_Life.UserViewHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <div class="container m-auto" dir="rtl">
        <br />
        <br />
        <br />
        <br />
    <asp:GridView ID="UserViewHistory" runat="server" class="table table-bordered table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BloodType" HeaderText="فصيلة الدم" SortExpression="BloodType" />
            <asp:BoundField DataField="DonationDate" HeaderText="تاريخ التبرع" SortExpression="DonationDate" />
            <asp:BoundField DataField="DonationGov" HeaderText="المحافظة" SortExpression="DonationGov" />
            <asp:BoundField DataField="DonationPlace" HeaderText="بنك الدم" SortExpression="DonationPlace" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodForLifeConnectionString %>" SelectCommand="SELECT [BloodType], [DonationDate], [DonationGov], [DonationPlace] FROM [DonationTB]"></asp:SqlDataSource>

    </div>
</center>
</asp:Content>
