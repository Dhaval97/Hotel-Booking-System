<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Book_My_Hotel.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/LoginPage.css">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="top-content">
        <div class="inner-bg">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text">
                        <h1 id="content"><strong>Login Form</strong></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top vertical" id="horizontal-top">
                            <div class="form-top-left">
                                <h3>Login to our site</h3>
                                <p>Enter your username and password to log on:</p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-key"></i>
                            </div>
                        </div>
                        <div class="form-bottom vertical" id="horizontal-bottom">
                            <form runat="server" role="form" class="login-form">
                                <div class="form-group">
                                    <label for="username">Username :</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="Username Required" Font-Bold="True" ControlToValidate="username" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <input type="text" name="username" placeholder="Enter Username" class="form-username form-control" id="username" runat="server">
                                    <asp:CheckBox ID="chkIsAdmin" runat="server" Font-Bold="True" Font-Size="Medium" Text=" CheckMe To Login As Admin" />
                                </div>
                                <div class="form-group">
                                    <label for="username">Password :</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password Required" Font-Bold="True" ControlToValidate="password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <input type="password" name="password" placeholder="Enter Password" class="form-password form-control" id="password" runat="server">
                                </div>
                                <asp:Button ID="Login" runat="server" Text="Submit" class="btn btn-success" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="Login_Click" />
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <h4>Not A Member? <a href="RegisterPage.aspx">Register Here...</a>
                                </h4>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
