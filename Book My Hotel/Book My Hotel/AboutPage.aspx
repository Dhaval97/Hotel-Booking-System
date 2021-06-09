<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="Book_My_Hotel.AboutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    About Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/AboutPage.css">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="wrapper row2">
        <div id="container" class="clear">
            <div id="about-us" class="clear">
                <section id="about-intro" class="clear">
                    <h2>About Us</h2>
                    <center>
                        <img src="Images/about.jpg">
                    </center>
                    <p>
                        Here, at <strong>Book My Hotel</strong> we provide Room Reservation in Hotel and other Customer Services. Book My Hotel has the best User Interface that 
                        allows our customer to book a room for themself without getting into trouble. If you get into trouble, We also provide <strong>24X7 Customer 
                            Services</strong> and we will guide you to the process.
                    </p>
                    <p>
                        Our Headquaters are located strategically near Juhu Beach, close to major business and entertainment centers in Mumbai, near Hare Rama Hare Krishna Mandir, 
                        just 4 kms from the domestic airport and 6 kms from the imternational airport. Book My Hotel is run by Professional Expertise. Our customer can also visit 
                        our headquaters for any queries in reservation and we will be happy to assist you.
                    </p>
                </section>
            </div>
        </div>
    </div>
</asp:Content>
