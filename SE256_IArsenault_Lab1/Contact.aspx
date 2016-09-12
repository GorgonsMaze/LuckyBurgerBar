<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SE256_IArsenault_Lab1.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <section class="contact">
            <h1 class="text-center">Contact Us!</h1>
            <!-- CONTACT US FORM -->
            <div class="row">
                <div class="col-sm-12 col-md-8 col-lg-5 col-md-offset-2 col-lg-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="openSans">
                                <div class="form-group">
                                    <label for="contactname"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Name</label>
                                    <input type="text" class="form-control" id="contactname" placeholder="Name" />
                                </div>
                                <div class="form-group">
                                    <label for="contactemail"><span class="glyphicon glyphicon-envelope mail-icon" aria-hidden="true"></span>Email address</label>
                                    <input type="email" class="form-control" id="contactemail" placeholder="yourname@example.com" />
                                </div>
                                <div class="form-group">
                                    <label for="contactmessage"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span>Message</label>
                                    <textarea id="contactmessage" class="form-control" rows="4" placeholder="Type your message here..."></textarea>
                                    <%--<input type="text" class="form-control" rows="6" placeholder="Type your message here.....">--%>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <button type="button" class="btn btn-danger">Send<span class="glyphicon glyphicon-send" aria-hidden="true"></span></button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- Other Contact Methods & Address--%>
                <div class="col-sm-12 col-md-8 col-lg-5 col-md-offset-2 contact-details">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <h5>Contact Info</h5>
                            </div>
                            <%--  Email or Phone--%>
                            <ul class="list-group">
                                <li class="list-group-item"><span>Email: </span>LuckyBurgerBar@gmail.com<a href="#!" class="icon"><span class="glyphicon glyphicon-send" aria-hidden="true"></span></a></li>
                                <li class="list-group-item"><span>Phone: </span>1.401.555.5555<a href="#!" class="icon"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span></a></li>
                            </ul>
                            <%-- Address for snail mail--%>
                            <ul class="list-group">
                                <li class="list-group-item topper"><span>Mail:</span><a href="#!" class="icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a></li>
                                <li class="list-group-item">Lucky Burger Bar</li>
                                <li class="list-group-item">324 Washington Street</li>
                                <li class="list-group-item">Providence, RI 02906</li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
</asp:Content>
