<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE256_IArsenault_Lab1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Login Please</legend>
                            <div class="form-group">
                                  <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                     <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                 <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label pwrd"></asp:Label>
                                <div class="col-lg-12">
                                     <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox><br />
                                    <%--MAKE SURE THIS WORKS OR IS TAKEN OFF BEFORE FINAL--%>
                                    <div class="checkbox text-center">
                                        <label>
                                            <input type="checkbox" />
                                            Remember Me
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <br />


                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <button type="submit" class="btn btn-danger">Sign-in</button>
                                </div>
                                <br />
                                <div class="col-lg-12 text-center">
                                    <a href="forgot-password" type="button" class="btn btn-default">Forgot Password?</a>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
