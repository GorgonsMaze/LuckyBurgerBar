<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="SE256_IArsenault_Lab1.Reservation" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container section-container">
        <h2 class="text-center white-text">Reservation Center</h2>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="text-center">
                    <%--Error message for Update or Add--%>
                    <asp:Label ID="lblMessage" runat="server" Text="" CssClass=""></asp:Label>
                </div>
                <div class="panel panel-default hoverable-dark">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Reservation Scheduler</legend>
                            <%--Guest ID Form Group--%>
                            <div class="form-group">
                                <%--Guest ID Label--%>
                                <asp:Label ID="lblGuest" CssClass="col-lg-2 control-label" runat="server" Text="Guest"></asp:Label>
                                <div class="col-lg-12">
                                    <%--Input field for Guest--%>
                                    <asp:DropDownList ID="ddlGuest" runat="server" CssClass="select-asp-styling" DataSourceID="sdsGuest" DataTextField="guest_email" DataValueField="guest_id" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0" Text="Please Choose One.." Selected="True"></asp:ListItem>
                                    </asp:DropDownList><br />
                                    <%--SqlDataSource for Guest Drop Down--%>
                                    <asp:SqlDataSource ID="sdsGuest" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="guests_gettop50" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <%--Guest Required Field Validator -- To make sure a Guest is entered--%>
                                    <asp:RequiredFieldValidator ID="rfvGuest" runat="server" ErrorMessage="A Guest is required" ControlToValidate="ddlGuest" InitialValue="0" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%--Table ID Form Group--%>
                            <div class="form-group">
                                <%--Table ID Label--%>
                                <asp:Label ID="lblTable" CssClass="col-lg-2 control-label" runat="server" Text="Table"></asp:Label>
                                <div class="col-lg-12">
                                    <%--Input field for Tablet--%>
                                    <asp:DropDownList ID="ddlTable" runat="server" CssClass="select-asp-styling" AppendDataBoundItems="True" DataSourceID="sdsTable" DataTextField="tbl_name" DataValueField="tbl_id">
                                        <asp:ListItem Value="0" Text="Please Choose One.." Selected="True"></asp:ListItem>
                                    </asp:DropDownList><br />
                                    <%--SqlDataSource for Table Drop Down--%>
                                    <asp:SqlDataSource ID="sdsTable" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="tables_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <%--Table Required Field Validator -- To make sure a Table is entered--%>
                                    <asp:RequiredFieldValidator ID="rfvTable" runat="server" ErrorMessage="A Table is required" ControlToValidate="ddlTable" InitialValue="0" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%--User ID Form Group--%>
                            <div class="form-group">
                                <%--User ID Label--%>
                                <asp:Label ID="lblUser" CssClass="col-lg-2 control-label" runat="server" Text="User"></asp:Label>
                                <div class="col-lg-12">
                                    <%--Input field for Guest--%>
                                    <asp:DropDownList ID="ddlUser" runat="server" CssClass="select-asp-styling" DataSourceID="sdsUser" DataTextField="user_email" DataValueField="user_id" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0" Text="Please Choose One.." Selected="True"></asp:ListItem>
                                    </asp:DropDownList><br />
                                    <%--SqlDataSource for User Drop Down--%>
                                    <asp:SqlDataSource ID="sdsUser" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="users_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <%--User Required Field Validator -- To make sure a User is entered--%>
                                    <asp:RequiredFieldValidator ID="rfvUser" runat="server" ErrorMessage="A User is required" ControlToValidate="ddlUser" InitialValue="0" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%--Reservation Date Form Group--%>
                            <div class="form-group">
                                <%-- Reservation Date  Label--%>
                                <asp:Label ID="lblResDate" CssClass="col-lg-2 control-label" runat="server" Text="Reservation Date"></asp:Label>
                                <div class="col-lg-12">
                                    <%--Input field for a Reservation Date --%>
                                    <asp:TextBox ID="txtResDate" CssClass="form-control" runat="server" placeholder="MM/DD/YYYY"></asp:TextBox>
                                    <%-- Reservation Date  Required Field Validator -- To make sure a Reservation Date is entered--%>
                                    <asp:RequiredFieldValidator ID="rfvResDate" runat="server" ErrorMessage="A Reservation Date is Required" ControlToValidate="txtResDate" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    <%--Reservation Date Compare Validator -- To make sure a proper Res Date is entered--%>
                                    <asp:CompareValidator ID="cvResDate" runat="server" ErrorMessage="Invalid Reservation Date" ControlToValidate="txtResDate" Type="Date" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>
                                </div>
                            </div>
                           
                            <%--Reservation Time Form Group--%>
                            <div class="form-group">
                                <%-- Reservation Time  Label--%>
                                <asp:Label ID="lblResTime" CssClass="col-lg-2 control-label" runat="server" Text="Reservation Time"></asp:Label>
                                <div class="col-lg-12">
                                    <%--Input field for a Reservation Time --%>
                                    <asp:TextBox ID="txtResTime" CssClass="form-control" runat="server" placeholder="00:00AM/PM"></asp:TextBox>
                                    <%-- Reservation Time  Required Field Validator -- To make sure a Reservation Date is entered--%>
                                    <asp:RequiredFieldValidator ID="rfvResTime" runat="server" ErrorMessage="A Reservation Time is Required" ControlToValidate="txtResTime" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                            <%--Guest Count Form Group--%>
                            <div class="form-group">
                                <%-- Seat Count Label--%>
                                <asp:Label ID="lblGuestCount" CssClass="col-lg-2 control-label" runat="server" Text="Guest Count"></asp:Label>
                                <div class="col-lg-12">
                                    <%--Input field for Guest Count --%>
                                    <asp:TextBox ID="txtGuestCount" CssClass="form-control" runat="server" placeholder="Guest Count"></asp:TextBox>
                                    <%-- Guest Count  Required Field Validator -- To make sure a Guest Count is entered--%>
                                    <asp:RequiredFieldValidator ID="rfvGuestCount" runat="server" ErrorMessage="A Guest Count  is Required" ControlToValidate="txtGuestCount" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvGuestCount" runat="server" ErrorMessage="Invalid Guest Count" ControlToValidate="txtGuestCount" Type="Integer" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>
                                </div>
                            </div>

                            <%--Special Req. Form Group--%>
                            <div class="form-group">
                                <%-- Special Req.  Label--%>
                                <asp:Label ID="lblSpecReq" CssClass="col-lg-2 control-label" runat="server" Text="Special Requirements"></asp:Label>
                                <div class="col-lg-12">
                                    <%--Input field for a Special Req. --%>
                                    <asp:TextBox ID="txtSpecReq" CssClass="form-control" runat="server" placeholder="Special Requirements "></asp:TextBox>
                                </div>
                            </div>


                            <%-- Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%--Cancel Buttton--%>
                                    <asp:Button ID="btnCancelRes" runat="server" href="" CssClass="btn btn-default" Text="Cancel" CausesValidation="false" />

                                    <%--Update Button--%>
                                    <asp:Button ID="btnAddUpdateRes" runat="server" CssClass="btn btn-danger" Text="Update" />
                                </div>

                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

