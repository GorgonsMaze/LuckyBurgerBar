<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Section.aspx.cs" Inherits="SE256_IArsenault_Lab1.Section" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container section-container">
        <h2 class="text-center">Section</h2>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default hoverable-dark">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Section Entry</legend>
                            <%-- Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblSecName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtSecName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSecName" runat="server" ErrorMessage="* Please enter section name" CssClass="alert" ControlToValidate="txtSecName"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%-- Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblSecDesc" runat="server" Text="Description" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtSecDesc" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSecDesc" runat="server" ErrorMessage="* Please eneter section description" CssClass="alert" ControlToValidate="txtSecDesc"></asp:RequiredFieldValidator>

                                </div>


                                <%--Is Active Checbox Input--%>
                                <div class="form-group">
                                    <div class="col-lg-12 checkbox text-center">
                                        <asp:CheckBox ID="chkSecActive" runat="server" /><asp:Label ID="lblSecActive" runat="server" Text="Is Active"></asp:Label>
                                    </div>
                                </div>


                                <%-- Button Group--%>
                                <div class="form-group">
                                    <div class="col-lg-12 text-center">
                                        <asp:Button ID="btnSecCancel" PostBackUrl="" runat="server" href="" CssClass="btn btn-default" Text="Cancel" CausesValidation="false" />

                                        <%--Type="submit" ???--%>
                                        <%--Update--%>
                                        <asp:Button ID="btnSecUpdate" runat="server" CssClass="btn btn-danger" Text="Update" />
                                    </div>
                                    <%-- Cancel--%>
                                    <%--  <div class="col-lg-12 text-center">
                                        <asp:Button ID="btnSecCancel" PostBackUrl="" runat="server" href="" CssClass="btn btn-default" Text="Cancel" />
                                    </div>--%>
                                </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
