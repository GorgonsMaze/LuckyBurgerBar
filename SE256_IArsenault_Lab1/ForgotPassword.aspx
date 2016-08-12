<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="SE256_IArsenault_Lab1.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Forgot Password?</legend>
                            <%-- Email Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-12 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                    <%--Required validator--%>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="* Please enter email" CssClass="alert" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                    <%--Regex for email--%>
                                    <asp:RegularExpressionValidator ID="regexEmail" runat="server" ErrorMessage="* Invalid Email!"  cssClass="alert" ControlToValidate="txtEmail"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <%-- Confirm Email Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email" CssClass="col-lg-12 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtConfirmEmail" runat="server" CssClass="form-control" placeholder="Re-enter Email"></asp:TextBox>
                                    <%--Required validator--%>
                                    <asp:RequiredFieldValidator ID="rfvConfirmEmail" runat="server" ErrorMessage="* Please re-enter email" CssClass=" alert" ControlToValidate="txtConfirmEmail"></asp:RequiredFieldValidator>
                                    <%--Compare validator--%>
                                    <asp:CompareValidator ID="cmpvEmail" runat="server" ErrorMessage="* Emails do not match" ControlToValidate="txtEmail" ControlToCompare="txtConfirmEmail" CssClass="alert alert-warning"></asp:CompareValidator>

                                </div>
                            </div>
                            <%--Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-12 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="* Please enter password" CssClass=" alert" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <%-- Confirm Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" CssClass="col-lg-12 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Re-enter Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ErrorMessage="* Please re-enter password" CssClass=" alert" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cmpvPassword" runat="server" ErrorMessage="* Passwords do not match " ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword" CssClass="alert alert-warning"></asp:CompareValidator>
                                </div>
                            </div>

                            <br />

                            <%-- Reset Password Btn --%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%--Type="submit" ???--%>
                                    <asp:Button ID="btnResetPassword" runat="server" CssClass="btn btn-danger" Text="Reset Password" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
