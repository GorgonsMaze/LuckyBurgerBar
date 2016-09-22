<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SE256_IArsenault_Lab1.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <section class="card-section">
            <div class="row">
                <h1 class="text-center">Our Approach</h1>
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-left media-middle">
                                    <a href="#">
                                        <img class="media-object" height="96" width="120" src="https://www.burgerim.com/wp-content/uploads/2015/12/2-Burgerim-Mini-Burgers-Up-Close-Burgers.png" alt="Burger" />
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Come feast!</h4>
                                    <p>
                                        Here at Lucky Burger Bar our approach is simple. Making you the best burger in thew world! We enjoy catering your burger needs
                                        any day of the week. Our creation date was 10 years ago, and we continue to be one of the best burger joints in the universe! 
                                        So Stop in any time we're open and we'll make sure you enjoy yourself with one of our House Burgers and cold brews.
                                    
                                    </p>

                                </div>
                            </div>
                            <br />
                            <div class="media">
                              
                                <div class="media-body">
                                    <h4 class="media-heading">Some extras!</h4>
                                    <p>We're also expanding our restaurant to new locations coming Fall 2017. We will be expanding to Boston, Hartford, Portland and New York City.
                                        If you interested in gift cards to give to a friend or family member for the holidays, or any special occasion. Feel free to stop in or contact us
                                        online by going to our Contact Us page.
                                    </p>
                                </div>
                                 <div class="media-right media-middle">
                                    <a href="#">
                                        <img class="media-object" height="96" width="96" src="https://lh3.googleusercontent.com/87M6X6hiETZcuH7ViT87KncCMr7nnSOJH1djalKHDDfEAjUb2yBbSqBtofso_ecls1YClzOFaoAldam9Iskh_A=s400" alt="Burger">
                                    </a>
                                </div>
                            </div>


                        </div>
                    </div>
                    <%--/panel--%>
                </div>
                <%--/col-md-8--%>
                <div class="col-md-2"></div>
            </div>

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                  <img class="img-responsive" src="http://c767204.r4.cf2.rackcdn.com/3016377b-e8ee-4b21-b2bd-17f8ba8dcffc.jpg" alt="Burger"/>
                </div>
                <div class="col-md-2"></div>
            </div>
        </section>
    </div>
</asp:Content>
