<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Book_My_Hotel.RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Registration Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/RegisterPage.css">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" id="form">
                <center>
                    <b class="reg">
                        Registration Form
                    </b>
                </center>
                <br />
                <form runat="server" role="form">
                    <div class="form-group">
                        <label for="fullname">Full Name :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFullName" runat="server" ErrorMessage="Name Required" ControlToValidate="fullname" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        <input type="text" name="fullname" class="form-control input-text" placeholder="Enter Name" id="fullname" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="username">Username :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="Username Required" Font-Bold="True" ControlToValidate="username" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        <input type="text" name="username" class="form-control input-text" placeholder="Enter Username" id="username" runat="server">
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email Required" Font-Bold="True" ControlToValidate="email" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        <input type="email" name="email" class="form-control input-text" placeholder="Enter Email" id="email" runat="server">
                    </div>
                    <div class="form-group">
                        <label for="password">Password :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password Required" Font-Bold="True" ControlToValidate="password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        <input type="password" name="password" class="form-control input-text" placeholder="Enter Password" id="password" runat="server">
                    </div>
                    <div class="form-group">
                        <label for="confirmPassowrd">Confirm Password :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ErrorMessage="Password Required" Font-Bold="True" ControlToValidate="confirmPassword" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<br />
                        <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password Not Matching" ControlToCompare="password" ControlToValidate="confirmPassword" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                        <input type="password" name="confirmPassword" class="form-control input-text" placeholder="Confirm Password" id="confirmPassword" runat="server">
                    </div>
                    <div class="form-group">
                        <label>Contact No :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContact" runat="server" ErrorMessage="Contact Required" Font-Bold="True" ControlToValidate="contact" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        <input type="text" name="contact" class="form-control input-text" placeholder="Enter Contact No" id="contact" pattern=".{10}" title="Please enter 10 Digit Mobile Number" runat="server">
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Register" runat="server" Text="Register" class="btn btn-primary" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="Register_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Green"></asp:Label>
                    </div>
                    <h4>Already A Member? <a href="LoginPage.aspx">Login Here...</a></h4>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
