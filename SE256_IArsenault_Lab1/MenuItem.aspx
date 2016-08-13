<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MenuItem.aspx.cs" Inherits="SE256_IArsenault_Lab1.MenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container menu-item-section">
        <%--Header Title--%>
        <h3 class="text-center">Menu Item</h3>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <%--Begin Panel--%>
                <div class="panel panel-default hoverable-dark">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Fill out Menu Item</legend>
                            <%--  Menu Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblMenuName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtMenuName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                    <%--Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvMenuName" runat="server" ErrorMessage="* Please enter menu item name" CssClass="alert" ControlToValidate="txtMenuName"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%-- Description Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblDescription" runat="server" Text="Description" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                                    <%--Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ErrorMessage="* Please enter a description" CssClass="alert" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <%-- Allergens Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblAllergens" runat="server" Text="Allergens" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12 blank-bottom">
                                    <asp:TextBox ID="txtAllergens" runat="server" CssClass="form-control" placeholder="Allergens"></asp:TextBox>
                                </div>
                            </div>

                            <%-- Price Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPrice" runat="server" Text="Price" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" placeholder="Price"></asp:TextBox>
                                    <%--Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ErrorMessage="* Please enter price" CssClass="alert" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                                    <%--  Compare Validator for price--%>
                                    <asp:CompareValidator ID="cmpvPrice" runat="server" ErrorMessage="* Currency Format only for price" Type="Currency" Operator="DataTypeCheck" ControlToValidate="txtPrice" CssClass="alert"></asp:CompareValidator>
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
                                    <%--Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvMenu" runat="server" InitialValue="Please Select Menu..." ErrorMessage="* Please select menu section" CssClass="alert" ControlToValidate="ddlMenu"></asp:RequiredFieldValidator>

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
                                    <%--Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" InitialValue="Please Select Category..." ErrorMessage="* Please select menu category" CssClass="alert" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>

                                </div>
                            </div>


                            <%--Is Active Checbox Input--%>
                            <div class="form-group">
                                <div class="col-lg-12 checkbox text-center">
                                    <asp:CheckBox ID="chkMenuIsActive" runat="server" /><asp:Label ID="lblMenuIsActive" runat="server" Text="Is Active"></asp:Label>
                                </div>
                            </div>


                            <%-- Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%-- Cancel--%>
                                    <asp:Button ID="btnCancelMenuItem" CausesValidation="false" runat="server" href="" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancelMenuItem_Click" />
                                    <%--Update--%>
                                    <asp:Button ID="btnUpdateMenuItem" runat="server" CssClass="btn btn-danger" Text="Update" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <%-- End Panel--%>
            </div>
        </div>
    </div>
    <%-- End Container--%>
</asp:Content>
