<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="DinnerMenu.aspx.cs" Inherits="SE256_IArsenault_Lab1.DinnerMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <section class="dinner">
            <h1 class="text-center">Dinner Menu</h1>

            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <%--Panel to hold all Menu Categories--%>


                            <%-- Begin Dinner Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Appetizers</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvDinnerApps" runat="server" CssClass="table " AutoGenerateColumns="False" DataSourceID="sdsDinnerApps">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsDinnerApps" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="2" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="1" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Dinner Menu Grid--%>


                            <%-- Begin Dinner Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Sandwiches</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvDinnerSandwiches" runat="server" CssClass="table" AutoGenerateColumns="False" DataSourceID="sdsDinnerSandwiches">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsDinnerSandwiches" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="2" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="2" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Dinner Menu Grid--%>

                            <%-- Begin Dinner Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Entrees</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">
                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvDinnerEntrees" runat="server" CssClass="table text-center" AutoGenerateColumns="False" DataSourceID="sdsDinnerEntrees">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsDinnerEntrees" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="2" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="4" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Dinner Menu Grid--%>

                            <%-- Begin Dinner Menu Grid--%>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4 class="text-center">Drinks</h4>
                                    <%--  Begin Panel--%>
                                    <div class="panel panel-default hoverable-dark">
                                        <div class="panel-body">

                                            <%-- Begin Table--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvAlcohol" runat="server" CssClass="table" AutoGenerateColumns="False" DataSourceID="sdsAlcohol">
                                                    <Columns>
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Allergens" HeaderText="Allergens" SortExpression="Allergens" HeaderStyle-CssClass="text-center" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" HeaderStyle-CssClass="text-center" />
                                                        <asp:CheckBoxField DataField="Gluten Free" HeaderText="Gluten Free" SortExpression="Gluten Free" HeaderStyle-CssClass="text-center" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sdsAlcohol" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="menu_items_getbymenuandcat" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="2" Name="menu_id" Type="Int32" />
                                                        <asp:Parameter DefaultValue="8" Name="cat_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End Panel--%>
                                </div>
                            </div>
                            <%-- END Dinner Menu Grid--%>



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

