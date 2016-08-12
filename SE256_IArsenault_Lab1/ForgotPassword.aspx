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
                                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                             <%-- Confirm Email Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtConfirmEmail" runat="server" CssClass="form-control" placeholder="Re-enter Email"></asp:TextBox><br />
                                </div>
                            </div>
                            <%--Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>
                             <%-- Confirm Password Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" CssClass="col-lg-2 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Re-enter Password"></asp:TextBox><br />
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
