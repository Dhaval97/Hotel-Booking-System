<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBooking.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="RoomBookingPage.aspx.cs" Inherits="Book_My_Hotel.RoomBookingPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Room Booking
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
    <div class="container">
        <div class="container">
            <h1 id="welcome">Welcome
            <asp:Label ID="lblPerson" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label></h1>
            <br />
        </div>
        <div class="jumbotron content" id="shape">
            <h1><i class="fa fa-bed" aria-hidden="true"></i>Book My Hotel</h1>
            <p>A place where we take care of You and your Family!!!</p>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </div>
        <div class="container">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="layout" id="shape">
                        <center>
                            <br />
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
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5" Width="685px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=Hotel;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [HotelName], [HotelCity], [BasePrice], [HotelImage] FROM [Hotel_Database] WHERE ([HotelCity] = @HotelCity)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="HotelCity" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </center>
                        <br />
                        <h4>Selected Hotel Information Given Below : </h4>
                        <table class="nav-justified">
                            <tr>
                                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hotel Name :</td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="210px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hotel City :</td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="210px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Base Price :</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Width="210px" ReadOnly="True"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGrid" runat="server" ErrorMessage="No Hotel Selected" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Search" runat="server" Text="Proceed Forward" class="btn btn-primary" Font-Size="Medium" Font-Bold="true" OnClick="Search_Click" />
                        <br />
                        <br />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
