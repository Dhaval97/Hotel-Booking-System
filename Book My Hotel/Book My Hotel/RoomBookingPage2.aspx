<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBooking.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="RoomBookingPage2.aspx.cs" Inherits="Book_My_Hotel.RoomBookingPage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Room Booking
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/RoomBooking.css">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <br />
    <br />
    <br />
    <div class="container">
        <div class="layout" id="shape">
            <div class="row">
                <div class="col-md-9 col-md-offset-1">
                    <center>
                        <h4><b>Hotel&#39;s Base Price : <asp:Label ID="lblBasePrice" runat="server"></asp:Label></b></h4>
                    </center>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <h4><b>Rooms </b></h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonRooms" runat="server" Width="178px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonRooms_SelectedIndexChanged">
                                            <asp:ListItem>Single Room</asp:ListItem>
                                            <asp:ListItem>Double Room</asp:ListItem>
                                            <asp:ListItem>Deluxe Room</asp:ListItem>
                                            <asp:ListItem>Connecting Room</asp:ListItem>
                                            <asp:ListItem>Executive Suite</asp:ListItem>
                                            <asp:ListItem>Presidential Suite</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <strong>
                                            <asp:Label ID="lblRooms" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblPrice" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRooms" runat="server" ErrorMessage="Select Room Type" ForeColor="Red" ControlToValidate="RadioButtonRooms" Display="Dynamic" Font-Size="Medium"></asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                            </table>

                            <br />
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <h4><b>Number Of Rooms Needed </b></h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtNumber" runat="server" AutoPostBack="True" OnTextChanged="txtNumber_TextChanged"></asp:TextBox>
                                        &nbsp;
                                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRoomNeeded" runat="server" ControlToValidate="txtNumber" ErrorMessage="How Many Room Needed?" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:Label ID="lblRoomsNeeded" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                                    </td>
                                </tr>
                            </table>

                            <br />
                            <table>
                                <tr>
                                    <td>&nbsp; <strong>
                                        <asp:Label ID="lblCheckIn" runat="server" Text="Check-In" Font-Size="Large"></asp:Label>
                                    </strong>
                                    </td>
                                    <td>
                                        <strong>&nbsp;<asp:Label ID="lblCheckOut" runat="server" Text="Check-Out" Font-Size="Large"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtCheckIn" runat="server" ReadOnly="True"></asp:TextBox>
                                        <asp:Image ID="checkIn" runat="server" ImageUrl="~/Images/calendar.png" Height="30px" />

                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCheckIn" runat="server" ControlToValidate="txtCheckIn" Display="Dynamic" ErrorMessage="Check-In Date Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />

                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCheckOut" runat="server" ReadOnly="True"></asp:TextBox>
                                        <asp:Image ID="checkOut" runat="server" ImageUrl="~/Images/calendar.png" Height="30px" />

                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCheckOut" runat="server" ControlToValidate="txtCheckOut" Display="Dynamic" ErrorMessage="Check-Out Date Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Calendar ID="checkInCalendar" runat="server" Font-Size="8pt" Height="200px" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Short" Font-Names="Verdana" ForeColor="#003399" OnSelectionChanged="checkInCalendar_SelectionChanged" OnDayRender="checkInCalendar_DayRender">
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                        </asp:Calendar>
                                    </td>
                                    <td>
                                        <asp:Calendar ID="checkOutCalendar" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Short" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="checkOutCalendar_SelectionChanged" OnDayRender="checkOutCalendar_DayRender">
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                        </asp:Calendar>
                                    </td>
                                </tr>
                                </tr>
                            </table>
                            <br />
                            <asp:Button ID="Search" runat="server" Text="Proceed To Payment" class="btn btn-primary" Font-Size="Medium" Font-Bold="true" OnClick="Search_Click" />

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblNumber" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </div>
    </div>
</asp:Content>
