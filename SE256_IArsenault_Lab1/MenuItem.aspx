<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MenuItem.aspx.cs" Inherits="SE256_IArsenault_Lab1.MenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container menu-item-section">
        <h3 class="text-center">Menu Item</h3>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Fill out Menu Item</legend>
                            <%--  Menu Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblMenuName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtMenuName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                            <%-- Description Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblDescription" runat="server" Text="Description" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                                </div>
                            </div>
                            <%-- Allergens Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblAllergens" runat="server" Text="Allergens" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtAllergens" runat="server" CssClass="form-control" placeholder="Allergens"></asp:TextBox>
                                </div>
                            </div>

                            <%-- Price Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPrice" runat="server" Text="Price" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" placeholder="Price"></asp:TextBox><br />
                                </div>
                            </div>

                            <%-- Menu Select Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblMenu" runat="server" Text="Menu" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:DropDownList ID="ddlMenu" runat="server" CssClass="select-asp-styling">
                                        <asp:ListItem Text="Breakfast" Value="Breakfast"></asp:ListItem>
                                        <asp:ListItem Text="Lunch" Value="Lunch"></asp:ListItem>
                                        <asp:ListItem Text="Dinner" Value="Dinner"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <%-- Category Select Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblCategory" runat="server" Text="Category" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="select-asp-styling">
                                        <asp:ListItem Text="Appetizers" Value="Appetizers"></asp:ListItem>
                                        <asp:ListItem Text="Entrees" Value="Entrees"></asp:ListItem>
                                        <asp:ListItem Text="Desert" Value="Desert"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>


                            <%--Is Active Checbox Input--%>
                            <div class="form-group">
                                <div class="col-lg-12 checkbox text-center">
                                    <asp:CheckBox ID="chkMenuIsActive" runat="server" /><asp:Label ID="lblMenuIsActive" runat="server" Text="Is Active"></asp:Label>
                                </div>
                            </div>

                            <br />

                            <%-- Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%--Type="submit" ???--%>
                                    <%--Update--%>
                                    <asp:Button ID="btnUpdateMenuItem" runat="server" CssClass="btn btn-danger" Text="Update" />
                                </div>
                                <%-- Cancel--%>
                                <div class="col-lg-12 text-center">
                                    <asp:Button ID="btnCancelMenuItem" PostBackUrl="" runat="server" href="" CssClass="btn btn-default" Text="Cancel" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
