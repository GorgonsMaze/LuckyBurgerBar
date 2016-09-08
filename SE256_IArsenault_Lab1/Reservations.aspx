<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="SE256_IArsenault_Lab1.Reservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <%-- Resrevations Header Title--%>
                        <h2 class="text-center">Reservations</h2>

                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <%--Reservations Gridview --%>
                            <asp:GridView ID="gvReservations" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="res_id" DataSourceID="sdsReservations" CssClass="table" PageSize="10">
                                <%--Columns--%>
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
                            <asp:SqlDataSource ID="sdsReservations" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="reservations_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>





            <%--End Gridview Column--%>
        </div>
        <%--End Row --%>
    </div>
    <%-- End Container--%>
</asp:Content>
