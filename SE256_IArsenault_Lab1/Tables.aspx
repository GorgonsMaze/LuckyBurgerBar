<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="SE256_IArsenault_Lab1.Tables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Begin Cotainer--%>
    <div class="container tables-section">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <%-- Tables Header Title--%>
                        <h2 class="text-center">Tables</h2>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <%-- Tables Gridview--%>
                            <asp:GridView ID="gvTables" runat="server" CssClass="table text-center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tbl_id" DataSourceID="sdsTables" PageSize="10">
                                <Columns>
                                    <asp:BoundField DataField="tbl_id" HeaderText="Table ID" InsertVisible="False" ReadOnly="True" SortExpression="tbl_id" HeaderStyle-CssClass="text-center"/>
                                    <%-- Hyperlink Column--%>
                                    <asp:HyperLinkField DataTextField="tbl_name" DataNavigateUrlFields="tbl_id" DataNavigateUrlFormatString="~/Admin/Table/{0}" HeaderText="Table Name" SortExpression="tbl_name" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="tbl_desc" HeaderText="Table Description" SortExpression="tbl_desc" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="tbl_seat_cnt" HeaderText="Seat Count" SortExpression="tbl_seat_cnt" HeaderStyle-CssClass="text-center"/>
                                    <asp:CheckBoxField DataField="tbl_active" HeaderText="Is Active" SortExpression="tbl_active" HeaderStyle-CssClass="text-center"/>
                                </Columns>
                                <PagerSettings Mode="Numeric" Position="TopAndBottom" PageButtonCount="14" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            <%--SQL Datasource--%>
                            <asp:SqlDataSource ID="sdsTables" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="tables_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                        </div>
                    </div>
                    <%-- End Panel Body--%>
                </div>
                <%--End Panel--%>
            </div>
            <%-- End Col--%>
        </div>
        <%--End Row--%>
    </div>
    <%--End Container --%>
</asp:Content>
