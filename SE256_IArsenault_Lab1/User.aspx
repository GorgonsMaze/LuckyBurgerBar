<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="SE256_IArsenault_Lab1.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container user-section">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default hoverable-dark">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Fill out User Information</legend>
                            <%-- First Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblFName" runat="server" Text="First Name" CssClass="col-lg-3 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtFName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                    <%--  Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="* Pleasee enter first name" CssClass="alert" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%-- Last Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblLName" runat="server" Text="Last Name" CssClass="col-lg-3 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtLName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                    <%--  Required Validator--%>
                                    <asp:RequiredFieldValidator ID="frvLName" runat="server" ErrorMessage="* Please enter last name" CssClass="alert" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%-- Address1 Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblAddress1" runat="server" Text="Address" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                    <%--  Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" ErrorMessage="* Please enter street address" CssClass="alert" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <%-- Address2 Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblAddress2" runat="server" Text="Address2" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12 blank-bottom">
                                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" placeholder="Address2"></asp:TextBox>
                                </div>
                            </div>

                            <%-- City Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblCity" runat="server" Text="City" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                                    <%--  Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="* Please enter city" CssClass="alert" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <%-- State Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblStates" runat="server" Text="State" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:DropDownList ID="ddlStates" runat="server" CssClass="select-asp-styling">
                                        <asp:ListItem Text="Rhode Island" Value="RI"></asp:ListItem>
                                        <asp:ListItem Text="Massachusetts" Value="MA"></asp:ListItem>
                                        <asp:ListItem Text="Connecticut" Value="CT"></asp:ListItem>
                                    </asp:DropDownList>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvState" runat="server" InitialValue="Please Select a State..." ErrorMessage="* Please select a state" CssClass="alert" ControlToValidate="ddlStates"></asp:RequiredFieldValidator>

                                </div>
                            </div>

                            <%-- Zip Code Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblZip" runat="server" Text="Zip" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" placeholder="Zip Code"></asp:TextBox>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="* Please enter a zip code" CssClass="alert" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
                                    <%--  Regex for Zip Code--%>
                                    <asp:RegularExpressionValidator ID="regexZip" runat="server" ErrorMessage="* Invalid Zip Code Ex. 02906 or 02906-4536" CssClass="alert" ControlToValidate="txtZip" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                                </div>
                            </div>


                            <%--Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="* Please enter a password" CssClass="alert" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%-- Confirm Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" CssClass="col-lg-12 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Re-enter Password"></asp:TextBox>
                                    <%--Required Validator --%>
                                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ErrorMessage="* Please re-enter password" CssClass="alert" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                                    <%--Compare validator--%>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="* Passwords do not match" ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword" CssClass="alert"></asp:CompareValidator>
                                </div>
                            </div>

                            <%-- Email Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="* Please enter a email" CssClass="alert" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                    <%--  Regex for Email--%>
                                    <asp:RegularExpressionValidator ID="regexEmail" runat="server" ErrorMessage="* Invalid Email" CssClass="alert" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <%-- Confirm Email Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email" CssClass="col-lg-3 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtConfirmEmail" runat="server" CssClass="form-control" placeholder="Re-enter Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvConfirmEmail" runat="server" ErrorMessage="* Please re-enter email" CssClass="alert" ControlToValidate="txtConfirmEmail"></asp:RequiredFieldValidator>
                                    <%-- Required Validator--%>
                                    <asp:CompareValidator ID="cmpvEmail" runat="server" ErrorMessage="* Emails do not match" ControlToValidate="txtEmail" ControlToCompare="txtConfirmEmail" CssClass="alert"></asp:CompareValidator>

                                </div>
                            </div>

                            <%-- Phone Number Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPhone" runat="server" Text="Phone" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="555-555-5555"></asp:TextBox>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="* Please enter phone number" CssClass="alert" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                                    <%--  Regex for phone--%>
                                    <asp:RegularExpressionValidator ID="regexPhone" runat="server" ErrorMessage="* Invalid Phone! Ex. 555-555-5555" CssClass="alert" ControlToValidate="txtPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                                </div>
                            </div>


                            <%--Is Active Checbox Input--%>
                            <div class="form-group">
                                <div class="col-lg-12 checkbox text-center">
                                    <asp:CheckBox ID="chkUserIsActive" runat="server" /><asp:Label ID="lblUserIsActive" runat="server" Text="Is Active"></asp:Label>
                                </div>
                            </div>


                            <br />


                            <%-- Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <asp:Button ID="btnCancelUser" CausesValidation="false" runat="server" href="" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancelUser_Click" />

                                    <%--Update--%>
                                    <asp:Button ID="btnUpdateUser" runat="server" CssClass="btn btn-danger" Text="Update" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
