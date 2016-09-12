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
                            <asp:GridView ID="gvResMgmt" runat="server" DataSourceID="sdsResMgmt" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="res_id" CssClass="table text-center" PageSize="10">
                                <Columns>
                                    <asp:BoundField DataField="res_id" HeaderText="Reservation ID" InsertVisible="False" ReadOnly="True" SortExpression="res_id" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="guest_id" HeaderText="Guest ID  " SortExpression="guest_id" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="tbl_id" HeaderText="Table ID" SortExpression="tbl_id" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="user_id" HeaderText="User ID" SortExpression="user_id" HeaderStyle-CssClass="text-center"/>
                                      <%--Hyperlink Column--%>
                                    <asp:HyperLinkField DataTextField="res_date" DataNavigateUrlFields="res_id" DataNavigateUrlFormatString="~/Reservation/{0}" HeaderText="Reservation Date" SortExpression="res_date" HeaderStyle-CssClass="text-center"/>     
                                    <asp:BoundField DataField="res_time" HeaderText="Reservation Time" SortExpression="res_time" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="res_guest_cnt" HeaderText="Number of Guests" SortExpression="res_guest_cnt" HeaderStyle-CssClass="text-center"/>
                                    <asp:BoundField DataField="res_spec_req" HeaderText="Specifications" SortExpression="res_spec_req" HeaderStyle-CssClass="text-center"/>
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
