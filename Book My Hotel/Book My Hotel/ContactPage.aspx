<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="Book_My_Hotel.ContactPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- Google Font API --%>
    <link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Teko:400,700" rel="stylesheet">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/ContactPage.css">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <section id="con">
        <div class="section-content">
            <h1 class="section-header">Get in <span class="content-header wow fadeIn " data-wow-delay="0.2s" data-wow-duration="2s">Touch with us</span></h1>
            <h3>We Are Here 24X7 To Assist You.</h3>
        </div>
        <div class="contact-section">
            <div class="container">
                <h2 align="center"> Leave a Message... We Will Contact You!!!</h2> <br />
                <form runat="server" role="form">
                    <div class="col-md-6 form-line">
                        <div class="form-group">
                            <label for="fullname">Full Name :</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name Required" Font-Bold="True" ControlToValidate="fullname" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                            <input type="text" name="fullname" class="form-control input-text" placeholder="Enter Full Name" id="fullname" runat="server">
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address :</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email Required" Font-Bold="True" ControlToValidate="email" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                            <input type="email" name="email" class="form-control input-text" placeholder="Enter Email" id="email" runat="server">
                        </div>
                        <div class="form-group">
                            <label>Contact No :</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorContact" runat="server" ErrorMessage="Contact Required" Font-Bold="True" ControlToValidate="contact" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                            <input type="text" name="contact" class="form-control input-text" placeholder="Enter Contact No" id="contact" pattern=".{10}" title="Please enter 10 Digit Mobile Number" runat="server">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="description">Message :</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDesc" runat="server" ErrorMessage="Message Required" Font-Bold="True" ControlToValidate="description" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                            <textarea name="description" class="form-control input-text" id="description" placeholder="Enter Your Message" runat="server"></textarea>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="help" runat="server" Text="Send Messgae" class="btn btn-primary" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="help_Click" />
                        </div>
                    </div>
                    <center>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#99FF99"></asp:Label>
                    </center>
                </form>
            </div>
            <center>
                <h1 id="or">OR</h1>
                <p>
                    <h2>
                        Feel Comfortable to Contact Us <br />
                        Phone Number : 9082575070
                    </h2>
                </p>
            </center>
        </div>
    </section>
</asp:Content>
