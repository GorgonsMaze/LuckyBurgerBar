<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Directions.aspx.cs" Inherits="SE256_IArsenault_Lab1.Directions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid direction-sec">
        <section class="directions">
            <h1 class="text-center direct-title">Directions</h1>
            <hr />
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="">

                    </div>
                </div>
                <div class="col-md-8 col-md-offset-2">
                     <div id="map"></div>
                </div>
            </div>
            
        </section>
    </div>
</asp:Content>
