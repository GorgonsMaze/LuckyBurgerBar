<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="SE256_IArsenault_Lab1.Table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container table-section">
        <h2 class="text-center">Table list</h2>

         <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Fill out Table Information</legend>
                            <%--  Table Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblTableName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtTabelName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>

                             <%--  Table Description Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblTableDesc" runat="server" Text="Description" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtTableDesc" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                                </div>
                            </div>

                            
                             <%--  Table Seat Count Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblTableSeatCount" runat="server" Text="Seat Count" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtTableSeatCount" runat="server" CssClass="form-control" placeholder="Seat Count"></asp:TextBox>
                                </div>
                            </div>
                         

                            <%-- Table Is Active Checbox Input--%>
                            <div class="form-group">
                                <div class="col-lg-12 checkbox text-center">
                                    <asp:CheckBox ID="chkTableIsActive" runat="server" /><asp:Label ID="lblTableIsActive" runat="server" Text="Is Active"></asp:Label>
                                </div>
                            </div>

                        

                            <%--  Table Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%--Type="submit" ???--%>
                                    <%--Update--%>
                                    <asp:Button ID="btnTableUpdate" runat="server" CssClass="btn btn-danger" Text="Update" />
                                </div>
                                <%-- Cancel--%>
                                <div class="col-lg-12 text-center">
                                    <asp:Button ID="btnTableCancel" PostBackUrl="" runat="server" href="" CssClass="btn btn-default" Text="Cancel" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
      
    </div>
</asp:Content>
