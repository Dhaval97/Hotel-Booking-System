<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBooking.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="RoomBookingPage3.aspx.cs" Inherits="Book_My_Hotel.RoomBookingPage3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Payment Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/RoomBooking.css">
    <%-- Internal CSS --%>
    <style type="text/css">
        .layout1 {
            margin: 0 auto;
            border: 3px solid;
            width: 45%;
            background-color: #ecf0f1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="layout1" id="shape">
        <div class="row">
            <div class="col-xs-9 col-xs-offset-1">
                <div id="details">
                    <br />
                    <br />
                    <center>
                        <table>
                            <tr>
                                <td>
                                    <h4>Hotel Name : </h4>
                                </td>
                                <td>
                                    <h4><asp:Label ID="Label1" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Hotel City : </h4>
                                </td>
                                <td>
                                    <h4><asp:Label ID="Label2" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Room Type : </h4>
                                </td>
                                <td>
                                    <h4><asp:Label ID="Label3" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Number Of Rooms Needed : </h4>
                                </td>
                                <td>
                                    <h4><asp:Label ID="Label4" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Check-In Date : </h4>
                                </td>
                                <td>
                                    <h4><asp:Label ID="Label5" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Check-Out Date : </h4>
                                </td>
                                <td>
                                    <h4><asp:Label ID="Label6" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Total Days : </h4>
                                </td>
                                <td>
                                    <h4><asp:Label ID="Label11" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                        </table>
                    </center>
                </div>
                <br />
                <br />
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Payment Details
                                    </h3>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="cardNumber">
                                            CARD NUMBER</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCard" runat="server" ErrorMessage="Card Details Required" Font-Bold="True" ControlToValidate="cardNumber" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <div class="input-group">
                                            <input type="text" name="cardNumber" class="form-control" placeholder="Enter Card Number" id="cardNumber" pattern=".{16}" title="Please enter 16 Digit Card Number" runat="server" />
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-7 col-md-7">
                                            <div class="form-group">
                                                <label for="expityMonth">
                                                    EXPIRY DATE</label>
                                                <div class="col-xs-6 col-lg-6 expiry">
                                                    <input type="text" name="month" class="form-control" placeholder="MM" id="expityMonth" pattern="0[1-9]|1[012]" title="Please enter 2 Digit Expiry Month" runat="server" required />
                                                </div>
                                                <div class="col-xs-6 col-lg-6 expiry">
                                                    <input type="text" name="year" class="form-control" placeholder="YY" id="expityYear" pattern=".{2}" title="Please enter 2 Digit Expiry Year" runat="server" required />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-5 col-md-5 pull-right">
                                            <div class="form-group">
                                                <label for="cvvCode">
                                                    CVV CODE</label>
                                                <input type="text" name="cvv" class="form-control" placeholder="CVV" id="cvvCode" pattern=".{3}" title="Please enter 3 Digit CVV Number" runat="server" required />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <ul class="nav nav-pills nav-stacked">
                                <strong>
                                    <li class="active">Final Payment :  &nbsp;&nbsp;
                                    <i class="fa fa-inr" aria-hidden="true"></i>
                                        <asp:Label ID="lblAmount" runat="server"></asp:Label>
                                    </li>
                                </strong>
                            </ul>
                            <br />
                            <asp:Button ID="Final" runat="server" Text="Final Payment" class="btn btn-success btn-lg btn-block" Font-Size="Medium" Font-Bold="true" OnClick="Final_Click" />
                            <br />
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green"></asp:Label>
                            <br />
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green"></asp:Label>
                            <br />
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green"></asp:Label>
                        </div>
                    </div>
                </div>
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
