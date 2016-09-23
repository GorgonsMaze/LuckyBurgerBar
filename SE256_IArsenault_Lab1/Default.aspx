<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SE256_IArsenault_Lab1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Home Page Content --%>
    <div class="container">
        <div class="row">
            <%--Default Title --%>
            <div class="col-lg-12">
                <h1 class="page-header text-center">Food & Beer Gallery</h1>
            </div>
            <%-- Burger & Beer Images --%>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <%--First Row Image--%>
                <div class="col-md-12">
                    <a class="thumbnail" href="#!">
                        <img class="img-responsive" src="http://i.imgur.com/wY90INg.jpg?1" alt="Beer" />
                    </a>
                </div>
                <%--Second Row Image--%>
                <div class="col-md-12">
                    <a class="thumbnail" href="#!">
                        <img class="img-responsive" src="http://i.imgur.com/6QJ5nUN.jpg?1" alt="Meatballs" />
                    </a>
                </div>
            </div>
            <%--End Col--%>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <%--First Row Image--%>
                <div class="col-md-12">
                    <a class="thumbnail" href="#!">
                        <img class="img-responsive" src="http://i.imgur.com/jQiP9fM.jpg?2" alt="Appetizer" />
                    </a>
                </div>
                <%--Second Row Image--%>
                <div class="col-md-12">
                    <a class="thumbnail" href="#!">
                        <img class="img-responsive" src="http://i.imgur.com/DVId3Ol.jpg?1" alt="Fish Tacos" />
                    </a>
                </div>

            </div>
            <%--End Col--%>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <%--First Row Image--%>
                <div class="col-md-12">
                    <a class="thumbnail" href="#!">
                        <img class="img-responsive" src="http://i.imgur.com/ewucVb5.jpg?1" alt="Burger" />
                    </a>
                </div>
                <%--Second Row Image--%>
                <div class="col-md-12">
                    <a class="thumbnail" href="#!">
                        <img class="img-responsive" src="http://i.imgur.com/wnhktZQ.jpg?1" alt="32oz Drafts" />
                    </a>
                </div>
            </div>
            <%--End Col--%>


            <%-- <div class="col-lg-3 col-md-4 col-xs-6 thumb">
               
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://i.imgur.com/6QJ5nUN.jpg?1" alt="Meatballs" />
                </a>
            </div>--%>
            <%-- <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="Fried Egg Bacon Burger" />
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="Mac & Cheese Burger" />
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="Cubano Sabdwucg" />
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="Spicy Fried Chicken" />
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="Jalepeno Burger" />
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="BBQ & Buffalo Combo" />
                </a>
            </div>--%>
        </div>
    </div>
    <%-- /container--%>
</asp:Content>
