<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="SE256_IArsenault_Lab1.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Begin Cotainer--%>
    <div class="container users-section">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <%-- Users Header Title --%>
                        <h2 class="text-center">Users</h2>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <%-- Users Gridview--%>
                            <asp:GridView ID="gvUsers" runat="server" CssClass="table"
                                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                                DataKeyNames="user_id" DataSourceID="sdsUsers" EmptyDataText="Sorry, no records match." PageSize="10">
                                <%--Columns--%>
                                <Columns>
                                    <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                                    <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
                                    <asp:BoundField DataField="user_first" HeaderText="user_first" SortExpression="user_first" />
                                    <%-- Hyperlink Column--%>
                                    <asp:HyperLinkField DataTextField="user_last" DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="~/Admin/User/{0}" HeaderText="Last Name" SortExpression="user_last" />
                                    <asp:CheckBoxField DataField="user_active" HeaderText="user_active" SortExpression="user_active" />
                                </Columns>

                                <PagerSettings Mode="Numeric" Position="TopAndBottom" PageButtonCount="14" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            <%--SQL Datasource--%>
                            <asp:SqlDataSource ID="sdsUsers" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="users_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>

            </div>
            <%--End Col--%>
        </div>
        <%--End Row --%>
    </div>
    <%-- End Container--%>
</asp:Content>
