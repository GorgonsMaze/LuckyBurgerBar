<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE256_IArsenault_Lab1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <%-- Begin Panel--%>
                <div class="panel panel-default hoverable-dark">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Login Please</legend>
                            <%-- Email Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                                    <%--email validator--%>
                                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="* Please enter username" CssClass="alert" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>

                                </div>
                            </div>


                            <%--Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                    <%--password validator--%>
                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="* Please enter password"
                                        CssClass=" alert alert-warning" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>


                                    <%--MAKE SURE THIS WORKS OR IS TAKEN OFF BEFORE FINAL--%>
                                    <div class="checkbox text-center">
                                        <%-- Checbbox - Remember Me--%>
                                        <asp:CheckBox ID="ckbxRememberMe" runat="server" /><asp:Label ID="lblRememberMe" runat="server" Text="Remember Me"></asp:Label>
                                    </div>
                                </div>
                            </div>

                            <br />

                            <div class="text-center">
                                <%--  Label for error messages--%>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </div>


                            <br />

                            <%-- Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%--Cancel--%>
                                    <asp:Button ID="btnForgotPassword" CausesValidation="false" runat="server" CssClass="btn btn-default" Text="Forgot Password?" OnClick="btnForgotPassword_Click" />

                                    <%--Type="submit" ???--%>
                                    <%--Login/Signin--%>
                                    <asp:Button ID="btnSignIn" runat="server" CssClass="btn btn-danger" Text="Log In" OnClick="btnSignIn_Click" />
                                </div>
                                <%--<div class="col-lg-12 text-center">
                                    <asp:Button ID="btnForgotPassword" PostBackUrl="~/ForgotPassword.aspx" runat="server" href="/Forgot-Password" CssClass="btn btn-default" Text="Forgot Password?" />
                                </div>--%>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <%--End Panel--%>
            </div>
        </div>
    </div>
    <%-- End Container--%>
</asp:Content>
