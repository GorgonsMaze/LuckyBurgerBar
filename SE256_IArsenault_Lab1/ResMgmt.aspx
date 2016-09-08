<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResMgmt.aspx.cs" Inherits="SE256_IArsenault_Lab1.ResMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Begin Cotainer--%>
    <div class="container res-mgmt-section">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <%--Res Mgmgt Header Title--%>
                        <h2 class="text-center">Reservation Management</h2>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <%-- Res Mgmt Gridview--%>
                            <asp:GridView ID="gvResMgmt" runat="server" DataSourceID="sdsResMgmt" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="res_id" CssClass="table" PageSize="10">
                                <Columns>
                                    <asp:BoundField DataField="res_id" HeaderText="res_id" InsertVisible="False" ReadOnly="True" SortExpression="res_id" />
                                    <asp:BoundField DataField="guest_id" HeaderText="guest_id" SortExpression="guest_id" />
                                    <asp:BoundField DataField="tbl_id" HeaderText="tbl_id" SortExpression="tbl_id" />
                                    <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                                      <%--Hyperlink Column--%>
                                    <asp:HyperLinkField DataTextField="res_date" DataNavigateUrlFields="res_id" DataNavigateUrlFormatString="~/Admin/Reservation/{0}" HeaderText="Reservation Date" SortExpression="res_date" />     
                                    <asp:BoundField DataField="res_time" HeaderText="res_time" SortExpression="res_time" />
                                    <asp:BoundField DataField="res_guest_cnt" HeaderText="res_guest_cnt" SortExpression="res_guest_cnt" />
                                    <asp:BoundField DataField="res_spec_req" HeaderText="res_spec_req" SortExpression="res_spec_req" />
                                </Columns>
                                <PagerSettings Mode="Numeric" Position="TopAndBottom" PageButtonCount="14" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            <%--SQL Datasource--%>
                            <asp:SqlDataSource ID="sdsResMgmt" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="reservations_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>
            <%-- End Col--%>
        </div>
        <%-- End Row--%>
    </div>
    <%--End Container--%>
</asp:Content>
