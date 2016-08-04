<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SE256_IArsenault_Lab1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form class="form-horizontal">
                            <fieldset>
                                <legend class="text-center">Login Please</legend>
                                <div class="form-group">
                                  <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                                  <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputEmail" placeholder="Email" />
                                  </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                                    <div class="col-lg-12">
                                        <input type="password" class="form-control" id="inputPassword" placeholder="Password" /><br />
                                        <div class="checkbox text-center">
                                            <label>
                                                <input type="checkbox" /> Remember Me
                                            </label>
                                        </div>
                                    </div>
                                </div><br />
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2 text-center">
                                        <button type="submit" class="btn btn-danger">Sign-in</button>
                                    </div><br />
                                    <div class="col-lg-10 col-lg-offset-2 text-center">
                                        <a href="forgot-password" type="button" class="btn btn-default">Forgot Password?</a>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
</asp:Content>
