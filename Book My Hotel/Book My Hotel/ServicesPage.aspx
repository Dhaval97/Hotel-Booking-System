<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="ServicesPage.aspx.cs" Inherits="Book_My_Hotel.ServicesPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Services Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%-- External CSS File --%>
    <link rel="stylesheet" type="text/css" href="CSS/ServicesPage.css">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="wrapper row2">
        <div id="container" class="clear">
            <div id="about-us" class="clear">
                <section id="about-intro" class="clear">
                    <h3>Other services we offer :</h3>
                    <center>
                        <h4>Cab Services & Party Hall</h4>
                    </center>
                    <br />
                    <br />
                    <center>
                        <table>
                            <tr>
                                <td><img src="Images/cab.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td><img src="Images/partyhall.jpg"></td>
                            </tr>
                        </table>
                    </center>
                </section>
            </div>
        </div>
    </div>
</asp:Content>
