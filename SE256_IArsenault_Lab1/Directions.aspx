<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Directions.aspx.cs" Inherits="SE256_IArsenault_Lab1.Directions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid direction-sec">
        <section class="directions">
            <h1 class="text-center direct-title">Directions</h1>
            <hr />
            <div class="row">
                <h4 class="text-center">How to get to Lucky Burger Bar</h4>
                <div class="col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">Coming from Cape Cod</div>
                        <div class="panel-body">
                            <ul class="list-group direct">
                                <li class="list-group-item">Take I-195 W towards Providence</li>
                                <li class="list-group-item">Take US-6 towards Boston MA</li>
                                <li class="list-group-item">Take Memorial Blvd Exit. 22A</li>
                                <li class="list-group-item">Turn right onto Francis Street</li>
                                <li class="list-group-item">Turn slight left onto Dorrance Street</li>
                                <li class="list-group-item">Go Straight for 4 Blocks</li>
                                <li class="list-group-item">We'll be right on the left-hand side!</li>
                            </ul>
                        </div>
                    </div>
            
                </div>
                <div class="col-sm-8 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">Coming from Boston</div>
                        <div class="panel-body">
                            <ul class="list-group direct">
                                <li class="list-group-item">Take I-93 S/US-1</li>
                                <li class="list-group-item">Take I-93 S via Exit1</li>
                                <li class="list-group-item">Take Memorial Blvd Exit. 22A</li>
                                <li class="list-group-item">Turn right onto Francis Street</li>
                                <li class="list-group-item">Turn slight left onto Dorrance Street</li>
                                <li class="list-group-item">Go Straight for 4 Blocks</li>
                                <li class="list-group-item">We'll be right on the left-hand side!</li>
                            </ul>
                        </div>
                    </div>
                
                </div>
                <div class="col-md-8 col-md-offset-2">
                    <div id="map"></div>
                </div>
            </div>

        </section>
    </div>
</asp:Content>
