<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="SE256_IArsenault_Lab1.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container user-section">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Fill out your information</legend>
                            <%-- First Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblFName" runat="server" Text="First Name" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtFName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <%-- Last Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblLName" runat="server" Text="Last Name" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtLName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <%-- Address1 Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblAddress1" runat="server" Text="Address" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>

                            <%-- Address2 Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblAddress2" runat="server" Text="Address2" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" placeholder="Address2"></asp:TextBox>
                                </div>
                            </div>

                            <%-- City Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblCity" runat="server" Text="City" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <%-- State Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblStates" runat="server" Text="States" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:DropDownList ID="ddlStates" runat="server">
                                        <asp:ListItem Text="RI" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="MA" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="CT" Value="3"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>

                            <%-- Zip Code Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblZip" runat="server" Text="Zip" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" placeholder="02906 or 02906-4539"></asp:TextBox>
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

                            <%-- Phone Number Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblPhone" runat="server" Text="Phone" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="555-555-5555"></asp:TextBox><br />
                                </div>
                            </div>


                            <%--Is Active Checbox Input--%>
                            <div class="form-group">
                                <div class="col-lg-12 checkbox text-center">
                                    <asp:CheckBox ID="CheckBox1" runat="server" /><asp:Label ID="Label3" runat="server" Text="Is Active"></asp:Label>
                                </div>
                            </div>


                            <br />


                            <%-- Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%--Type="submit" ???--%>
                                    <%--Update--%>
                                    <asp:Button ID="btnUpdateUser" runat="server" CssClass="btn btn-danger" Text="Update" />
                                </div>
                                <%-- Cancel--%>
                                <div class="col-lg-12 text-center">
                                    <asp:Button ID="btnCancelUser" PostBackUrl="" runat="server" href="" CssClass="btn btn-default" Text="Cancel" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
