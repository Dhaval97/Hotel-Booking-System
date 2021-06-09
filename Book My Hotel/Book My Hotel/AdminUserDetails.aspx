<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AdminUserDetails.aspx.cs" Inherits="Book_My_Hotel.AdminUserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Customer Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/RoomBooking.css">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <center>
        <h1 id="welcome">Customer Details</h1>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="964px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="FullName" HeaderText="Full Name" SortExpression="FullName" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Hotel;Integrated Security=True" DeleteCommand="DELETE FROM [Registration_Database] WHERE [ID] = @original_ID AND [FullName] = @original_FullName AND [Username] = @original_Username AND [Email] = @original_Email AND [Password] = @original_Password AND [Contact] = @original_Contact" InsertCommand="INSERT INTO [Registration_Database] ([FullName], [Username], [Email], [Password], [Contact]) VALUES (@FullName, @Username, @Email, @Password, @Contact)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Registration_Database]" UpdateCommand="UPDATE [Registration_Database] SET [FullName] = @FullName, [Username] = @Username, [Email] = @Email, [Password] = @Password, [Contact] = @Contact WHERE [ID] = @original_ID AND [FullName] = @original_FullName AND [Username] = @original_Username AND [Email] = @original_Email AND [Password] = @original_Password AND [Contact] = @original_Contact">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Decimal" />
                <asp:Parameter Name="original_FullName" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Contact" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Contact" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Contact" Type="Decimal" />
                <asp:Parameter Name="original_ID" Type="Decimal" />
                <asp:Parameter Name="original_FullName" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Contact" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
