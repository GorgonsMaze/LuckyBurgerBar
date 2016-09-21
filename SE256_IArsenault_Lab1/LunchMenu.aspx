<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="LunchMenu.aspx.cs" Inherits="SE256_IArsenault_Lab1.LunchMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <section class="lunch">
            <h1 class="text-center">Lunch Menu</h1>

            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <%--Panel to hold all Menu Categories--%>

                            <%-- Begin Brunch Sandwich Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Brunch Sandwiches</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvBrunchSandwich" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsBrunch">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsBrunch" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="5" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="2" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Bunch Menu Grid--%>


                            <%-- Begin Bunch Entree Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Brunch Entrees</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvBrunchEntree" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsBrunchEntree">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsBrunchEntree" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="5" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="4" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Lunch Entree Grid--%>


                            <%-- Begin Lunch Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Brunch Sides</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvBrunchSides" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsBrunchSides">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsBrunchSides" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="5" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="5" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Lunch Menu Grid--%>

                            <%-- Begin Appetizer Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Appetizers</h4>
                                    <%--   Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvApps" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsApps">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsApps" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="4" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="1" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                            <%--End Table--%>
                                        </div>

                                    </div>
                                    <%-- End Panel--%>
                                </div>
                            </div>
                            <%-- END Lunch Menu Grid--%>


                            <%-- Begin Lunch Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Sandwiches</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvLunchSandwiches" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsLunchSandwiches">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsLunchSandwiches" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="4" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="2" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Lunch Menu Grid--%>

                            <%-- Begin Lunch Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Salads</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvLunchSalads" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsLunchSalads">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsLunchSalads" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="4" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="3" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Lunch Menu Grid--%>


                            <%-- Begin Kids Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Kids Sandwiches</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvKidsSandwiches" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsKidsSandwiches">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsKidsSandwiches" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="3" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="2" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Kids Menu Grid--%>


                            <%-- Begin Kids Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Kids Entrees</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvKidsEntree" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsKidsEntrees">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsKidsEntrees" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="3" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="4" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Kids Menu Grid--%>

                            <%-- Begin Kids Drink Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Kids Drink</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvKidsDrink" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsKidsDrink">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsKidsDrink" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="3" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="6" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Kids Drink Menu Grid--%>
                        </div>
                    </div>
                    <%-- End Main Panel--%>
                </div>
            </div>
            <%-- End Row--%>
        </section>
    </div>
</asp:Content>
