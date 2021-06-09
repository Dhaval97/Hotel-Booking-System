<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="Book_My_Hotel.AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/AdminHomePage.css">
    <%-- Internal CSS --%>
    <style type="text/css">
        .cssPager td {
            padding-left: 4px;
            padding-right: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="container">
            <h1 id="welcome">Welcome
            <asp:Label ID="lblPerson" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label></h1>
            <br />
        </div>
        <div class="layout" id="shape">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblHotelName" runat="server" Text="Hotel Name :" Font-Bold="True" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtHotelName" runat="server" Font-Bold="False" Font-Size="Medium"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorHotelName" runat="server" ControlToValidate="txtHotelName" ErrorMessage="Hotel Name Required" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblHotelCity" runat="server" Text="City :" Font-Bold="True" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtHotelCity" runat="server" Font-Size="Medium"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorHotelCity" runat="server" ControlToValidate="txtHotelCity" ErrorMessage="Hotel City Required" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblRoomType" runat="server" Text="Room Type :" Font-Bold="True" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtRoomType" runat="server" Font-Bold="False" Font-Size="Medium" ReadOnly="True">Single Room</asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblPrice" runat="server" Text="Base Price :" Font-Bold="True" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPrice" runat="server" Font-Bold="False" Font-Size="Medium"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Base Price Required" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="lblImage" runat="server" Text="Upload Image :" Font-Bold="True" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorImage" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload An Image" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Size="Medium" Height="27px" Width="263px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;<asp:Button ID="btnAdd" runat="server" Text="Add Hotel" class="btn btn-primary" Font-Size="Medium" Font-Bold="true" OnClick="btnAdd_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green"></asp:Label>
            <br />
            <center>
                <br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <h4>Search : <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="-1">Select Your City</asp:ListItem>
                                <asp:ListItem>Mumbai</asp:ListItem>
                                <asp:ListItem>Chennai</asp:ListItem>
                                <asp:ListItem>Kolkata</asp:ListItem>
                                <asp:ListItem>Dubai</asp:ListItem>
                                <asp:ListItem>Toronto</asp:ListItem>
                                <asp:ListItem>London</asp:ListItem>
                                <asp:ListItem>New York</asp:ListItem>
                                </asp:DropDownList>
                        </h4>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="HotelID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5" Width="757px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" CausesValidation="false"/>
                                <asp:BoundField DataField="HotelName" HeaderText="Hotel Name" SortExpression="HotelName" />
                                <asp:BoundField DataField="HotelCity" HeaderText="Hotel City" SortExpression="HotelCity" />
                                <asp:BoundField DataField="BasePrice" HeaderText="Base Price" SortExpression="BasePrice" />
                                <asp:ImageField DataImageUrlField="HotelImage" HeaderText="Hotel Image">
                                </asp:ImageField>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Hotel;Integrated Security=True" DeleteCommand="DELETE FROM [Hotel_Database] WHERE [HotelID] = @original_HotelID AND [HotelName] = @original_HotelName AND [HotelCity] = @original_HotelCity AND [BasePrice] = @original_BasePrice AND [HotelImage] = @original_HotelImage" InsertCommand="INSERT INTO [Hotel_Database] ([HotelName], [HotelCity], [BasePrice], [HotelImage]) VALUES (@HotelName, @HotelCity, @BasePrice, @HotelImage)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Hotel_Database] WHERE ([HotelCity] = @HotelCity)" UpdateCommand="UPDATE [Hotel_Database] SET [HotelName] = @HotelName, [HotelCity] = @HotelCity, [BasePrice] = @BasePrice, [HotelImage] = @HotelImage WHERE [HotelID] = @original_HotelID AND [HotelName] = @original_HotelName AND [HotelCity] = @original_HotelCity AND [BasePrice] = @original_BasePrice AND [HotelImage] = @original_HotelImage">
                            <DeleteParameters>
                                <asp:Parameter Name="original_HotelID" Type="Decimal" />
                                <asp:Parameter Name="original_HotelName" Type="String" />
                                <asp:Parameter Name="original_HotelCity" Type="String" />
                                <asp:Parameter Name="original_BasePrice" Type="Decimal" />
                                <asp:Parameter Name="original_HotelImage" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="HotelName" Type="String" />
                                <asp:Parameter Name="HotelCity" Type="String" />
                                <asp:Parameter Name="BasePrice" Type="Decimal" />
                                <asp:Parameter Name="HotelImage" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="HotelCity" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="HotelName" Type="String" />
                                <asp:Parameter Name="HotelCity" Type="String" />
                                <asp:Parameter Name="BasePrice" Type="Decimal" />
                                <asp:Parameter Name="HotelImage" Type="String" />
                                <asp:Parameter Name="original_HotelID" Type="Decimal" />
                                <asp:Parameter Name="original_HotelName" Type="String" />
                                <asp:Parameter Name="original_HotelCity" Type="String" />
                                <asp:Parameter Name="original_BasePrice" Type="Decimal" />
                                <asp:Parameter Name="original_HotelImage" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </center>
        </div>
    </div>
</asp:Content>
