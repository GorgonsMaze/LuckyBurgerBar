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
                            <asp:GridView ID="gvMenuItems" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="sdsMenuItems" AutoGenerateColumns="False" DataKeyNames="item_id" CssClass="table text-center" PageSize="8">
                                <%--Columns--%>
                                <Columns>
                                    <asp:BoundField DataField="item_id" HeaderText="Item ID" InsertVisible="False" ReadOnly="True" SortExpression="item_id" HeaderStyle-CssClass="text-center"/>
                                    <%-- Hyperlink Column--%>
                                    <asp:HyperLinkField DataTextField="item_name" DataNavigateUrlFields="item_id" DataNavigateUrlFormatString="~/Admin/Menu-Item/{0}" HeaderText="Item Name"  SortExpression="item_name" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="item_desc" HeaderText="Item Desription" SortExpression="item_desc" HeaderStyle-CssClass="text-center" />
                                    <asp:BoundField DataField="item_price" HeaderText="Item Price" SortExpression="item_price" HeaderStyle-CssClass="text-center"/>
                                    <asp:CheckBoxField DataField="item_gluten_free" HeaderText="Gluten Free" SortExpression="item_gluten_free" HeaderStyle-CssClass="text-center"/>
                                    <asp:CheckBoxField DataField="item_active" HeaderText="Is Active" SortExpression="item_active" HeaderStyle-CssClass="text-center"/>
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
