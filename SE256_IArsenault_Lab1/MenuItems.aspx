<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MenuItems.aspx.cs" Inherits="SE256_IArsenault_Lab1.MenuItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Begin Container--%>
    <div class="container menu-items-section">
        <%--Begin Row--%>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <%-- Header Title for Menu Items --%>
                        <h2 class="text-center">Menu Items</h2>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <%-- Gridview Control--%>
                            <asp:GridView ID="gvMenuItems" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="sdsMenuItems" AutoGenerateColumns="False" DataKey Names="item_id" CssClass="table" PageSize="8">
                                <%--Columns--%>
                                <Columns>
                                    <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
                                    <%-- Hyperlink Column--%>
                                    <asp:HyperLinkField DataTextField="item_name" DataNavigateUrlFields="item_id" DataNavigateUrlFormatString="~/Admin/Menu-Item/{0}" HeaderText="Name" />
                                    <asp:BoundField DataField="item_desc" HeaderText="item_desc" SortExpression="item_desc" />
                                    <asp:BoundField DataField="item_price" HeaderText="item_price" SortExpression="item_price" />
                                    <asp:CheckBoxField DataField="item_gluten_free" HeaderText="item_gluten_free" SortExpression="item_gluten_free" />
                                    <asp:CheckBoxField DataField="item_active" HeaderText="item_active" SortExpression="item_active" />
                                </Columns>
                                <PagerSettings Mode="Numeric" Position="TopAndBottom" PageButtonCount="14" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            <%--SQL Datasource--%>
                            <asp:SqlDataSource ID="sdsMenuItems" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>
            <%-- End Col--%>
        </div>
        <%--End Row--%>
    </div>
    <%-- End Container--%>
</asp:Content>
