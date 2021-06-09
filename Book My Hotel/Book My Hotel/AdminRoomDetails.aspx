<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AdminRoomDetails.aspx.cs" Inherits="Book_My_Hotel.AdminRoomDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Booking Details
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
        <h1 id="welcome">Booking Details Of All Customers</h1>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookingID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1360px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="BookingID" HeaderText="BookingID" InsertVisible="False" ReadOnly="True" SortExpression="BookingID" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="HotelID" HeaderText="HotelID" SortExpression="HotelID" />
                <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                <asp:BoundField DataField="HotelCity" HeaderText="HotelCity" SortExpression="HotelCity" />
                <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                <asp:BoundField DataField="Number_Of_Rooms" HeaderText="Number_Of_Rooms" SortExpression="Number_Of_Rooms" />
                <asp:BoundField DataField="CheckIn_Date" HeaderText="CheckIn_Date" SortExpression="CheckIn_Date" />
                <asp:BoundField DataField="CheckOut_Date" HeaderText="CheckOut_Date" SortExpression="CheckOut_Date" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" SortExpression="PaymentID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Hotel;Integrated Security=True" DeleteCommand="DELETE FROM [Booking_Database] WHERE [BookingID] = @original_BookingID AND [Username] = @original_Username AND [HotelID] = @original_HotelID AND [HotelName] = @original_HotelName AND [HotelCity] = @original_HotelCity AND [RoomType] = @original_RoomType AND [Number_Of_Rooms] = @original_Number_Of_Rooms AND [CheckIn_Date] = @original_CheckIn_Date AND [CheckOut_Date] = @original_CheckOut_Date AND [Amount] = @original_Amount AND [PaymentID] = @original_PaymentID" InsertCommand="INSERT INTO [Booking_Database] ([Username], [HotelID], [HotelName], [HotelCity], [RoomType], [Number_Of_Rooms], [CheckIn_Date], [CheckOut_Date], [Amount], [PaymentID]) VALUES (@Username, @HotelID, @HotelName, @HotelCity, @RoomType, @Number_Of_Rooms, @CheckIn_Date, @CheckOut_Date, @Amount, @PaymentID)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Booking_Database]" UpdateCommand="UPDATE [Booking_Database] SET [Username] = @Username, [HotelID] = @HotelID, [HotelName] = @HotelName, [HotelCity] = @HotelCity, [RoomType] = @RoomType, [Number_Of_Rooms] = @Number_Of_Rooms, [CheckIn_Date] = @CheckIn_Date, [CheckOut_Date] = @CheckOut_Date, [Amount] = @Amount, [PaymentID] = @PaymentID WHERE [BookingID] = @original_BookingID AND [Username] = @original_Username AND [HotelID] = @original_HotelID AND [HotelName] = @original_HotelName AND [HotelCity] = @original_HotelCity AND [RoomType] = @original_RoomType AND [Number_Of_Rooms] = @original_Number_Of_Rooms AND [CheckIn_Date] = @original_CheckIn_Date AND [CheckOut_Date] = @original_CheckOut_Date AND [Amount] = @original_Amount AND [PaymentID] = @original_PaymentID">
            <DeleteParameters>
                <asp:Parameter Name="original_BookingID" Type="Decimal" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_HotelID" Type="Decimal" />
                <asp:Parameter Name="original_HotelName" Type="String" />
                <asp:Parameter Name="original_HotelCity" Type="String" />
                <asp:Parameter Name="original_RoomType" Type="String" />
                <asp:Parameter Name="original_Number_Of_Rooms" Type="Decimal" />
                <asp:Parameter Name="original_CheckIn_Date" Type="String" />
                <asp:Parameter Name="original_CheckOut_Date" Type="String" />
                <asp:Parameter Name="original_Amount" Type="Decimal" />
                <asp:Parameter Name="original_PaymentID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="HotelID" Type="Decimal" />
                <asp:Parameter Name="HotelName" Type="String" />
                <asp:Parameter Name="HotelCity" Type="String" />
                <asp:Parameter Name="RoomType" Type="String" />
                <asp:Parameter Name="Number_Of_Rooms" Type="Decimal" />
                <asp:Parameter Name="CheckIn_Date" Type="String" />
                <asp:Parameter Name="CheckOut_Date" Type="String" />
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="PaymentID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="HotelID" Type="Decimal" />
                <asp:Parameter Name="HotelName" Type="String" />
                <asp:Parameter Name="HotelCity" Type="String" />
                <asp:Parameter Name="RoomType" Type="String" />
                <asp:Parameter Name="Number_Of_Rooms" Type="Decimal" />
                <asp:Parameter Name="CheckIn_Date" Type="String" />
                <asp:Parameter Name="CheckOut_Date" Type="String" />
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="PaymentID" Type="Decimal" />
                <asp:Parameter Name="original_BookingID" Type="Decimal" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_HotelID" Type="Decimal" />
                <asp:Parameter Name="original_HotelName" Type="String" />
                <asp:Parameter Name="original_HotelCity" Type="String" />
                <asp:Parameter Name="original_RoomType" Type="String" />
                <asp:Parameter Name="original_Number_Of_Rooms" Type="Decimal" />
                <asp:Parameter Name="original_CheckIn_Date" Type="String" />
                <asp:Parameter Name="original_CheckOut_Date" Type="String" />
                <asp:Parameter Name="original_Amount" Type="Decimal" />
                <asp:Parameter Name="original_PaymentID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
