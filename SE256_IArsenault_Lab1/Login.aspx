<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE256_IArsenault_Lab1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Login Please</legend>
                           <%-- Email Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                            <%--Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox><br />
                                    <%--MAKE SURE THIS WORKS OR IS TAKEN OFF BEFORE FINAL--%>
                                    <div class="checkbox text-center">
                                        <asp:CheckBox ID="ckbxRememberMe" runat="server" /><asp:Label ID="lblRememberMe" runat="server" Text="Remember Me"></asp:Label>
                                    </div>
                                </div>
                            </div>

                            <br />

                            <%-- Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%--Type="submit" ???--%>
                                    <asp:Button ID="btnSignIn" runat="server" CssClass="btn btn-danger" Text="Button" />
                                </div>
                                <br />
                                <div class="col-lg-12 text-center">
                                    <asp:Button ID="btnForgotPassword" runat="server" CssClass="btn btn-default" Text="Forgot Password?" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
