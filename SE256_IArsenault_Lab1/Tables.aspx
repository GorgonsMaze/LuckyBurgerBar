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
                            <asp:GridView ID="gvTables" runat="server" CssClass="table" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tbl_id" DataSourceID="sdsTables" PageSize="10">
                                <Columns>
                                    <asp:BoundField DataField="tbl_id" HeaderText="tbl_id" InsertVisible="False" ReadOnly="True" SortExpression="tbl_id" />
                                    <asp:BoundField DataField="sect_id" HeaderText="sect_id" SortExpression="sect_id" />
                                    <asp:BoundField DataField="tbl_name" HeaderText="tbl_name" SortExpression="tbl_name" />
                                    <asp:BoundField DataField="tbl_desc" HeaderText="tbl_desc" SortExpression="tbl_desc" />
                                    <asp:BoundField DataField="tbl_seat_cnt" HeaderText="tbl_seat_cnt" SortExpression="tbl_seat_cnt" />
                                    <asp:CheckBoxField DataField="tbl_active" HeaderText="tbl_active" SortExpression="tbl_active" />
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
