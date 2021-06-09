<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AdminPaymentDetails.aspx.cs" Inherits="Book_My_Hotel.AdminPaymentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Payment Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/RoomBooking.css">
    <%-- Internal CSS --%>
    <style type="text/css">
        .cssPager td {
            padding-left: 4px;
            padding-right: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <center>
        <h1 id="welcome">Payments Details Of All Customers</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PaymentID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="964px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PaymentID" HeaderText="Payment ID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="CardNumber" HeaderText="Card Number" SortExpression="CardNumber" />
                <asp:BoundField DataField="ExpiryMonth" HeaderText="Expiry Month" SortExpression="ExpiryMonth" />
                <asp:BoundField DataField="ExpiryYear" HeaderText="Expiry Year" SortExpression="ExpiryYear" />
                <asp:BoundField DataField="CVV" HeaderText="CVV" SortExpression="CVV" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" CssClass="cssPager"/>
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Hotel;Integrated Security=True" DeleteCommand="DELETE FROM [Payment_Database] WHERE [PaymentID] = @original_PaymentID AND [Username] = @original_Username AND [CardNumber] = @original_CardNumber AND [ExpiryMonth] = @original_ExpiryMonth AND [ExpiryYear] = @original_ExpiryYear AND [CVV] = @original_CVV AND [Amount] = @original_Amount" InsertCommand="INSERT INTO [Payment_Database] ([Username], [CardNumber], [ExpiryMonth], [ExpiryYear], [CVV], [Amount]) VALUES (@Username, @CardNumber, @ExpiryMonth, @ExpiryYear, @CVV, @Amount)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Payment_Database]" UpdateCommand="UPDATE [Payment_Database] SET [Username] = @Username, [CardNumber] = @CardNumber, [ExpiryMonth] = @ExpiryMonth, [ExpiryYear] = @ExpiryYear, [CVV] = @CVV, [Amount] = @Amount WHERE [PaymentID] = @original_PaymentID AND [Username] = @original_Username AND [CardNumber] = @original_CardNumber AND [ExpiryMonth] = @original_ExpiryMonth AND [ExpiryYear] = @original_ExpiryYear AND [CVV] = @original_CVV AND [Amount] = @original_Amount">
            <DeleteParameters>
                <asp:Parameter Name="original_PaymentID" Type="Decimal" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_CardNumber" Type="Decimal" />
                <asp:Parameter Name="original_ExpiryMonth" Type="Decimal" />
                <asp:Parameter Name="original_ExpiryYear" Type="Decimal" />
                <asp:Parameter Name="original_CVV" Type="Decimal" />
                <asp:Parameter Name="original_Amount" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="CardNumber" Type="Decimal" />
                <asp:Parameter Name="ExpiryMonth" Type="Decimal" />
                <asp:Parameter Name="ExpiryYear" Type="Decimal" />
                <asp:Parameter Name="CVV" Type="Decimal" />
                <asp:Parameter Name="Amount" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="CardNumber" Type="Decimal" />
                <asp:Parameter Name="ExpiryMonth" Type="Decimal" />
                <asp:Parameter Name="ExpiryYear" Type="Decimal" />
                <asp:Parameter Name="CVV" Type="Decimal" />
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="original_PaymentID" Type="Decimal" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_CardNumber" Type="Decimal" />
                <asp:Parameter Name="original_ExpiryMonth" Type="Decimal" />
                <asp:Parameter Name="original_ExpiryYear" Type="Decimal" />
                <asp:Parameter Name="original_CVV" Type="Decimal" />
                <asp:Parameter Name="original_Amount" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
