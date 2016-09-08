<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Sections.aspx.cs" Inherits="SE256_IArsenault_Lab1.Sections" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Begin Cotainer--%>
    <div class="container  sections-container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <%-- Sections Header Title--%>
                        <h2 class="text-center">Sections</h2>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <%-- Sections Gridview--%>
                            <asp:GridView ID="gvSections" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="sect_id" DataSourceID="sdsSections" CssClass="table" PageSize="10">
                                <Columns>
                                    <asp:BoundField DataField="sect_id" HeaderText="sect_id" InsertVisible="False" ReadOnly="True" SortExpression="sect_id" />
                                    <asp:BoundField DataField="sect_name" HeaderText="sect_name" SortExpression="sect_name" />
                                    <asp:BoundField DataField="sect_desc" HeaderText="sect_desc" SortExpression="sect_desc" />
                                    <asp:CheckBoxField DataField="sect_active" HeaderText="sect_active" SortExpression="sect_active" />
                                </Columns>
                                <PagerSettings Mode="Numeric" Position="TopAndBottom" PageButtonCount="14" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            <%--SQL Datasource--%>
                            <asp:SqlDataSource ID="sdsSections" runat="server" ConnectionString="<%$ ConnectionStrings:se256_arsenaultiConnectionString %>" SelectCommand="sections_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                    </div>
                    <%-- End Panel Boddy --%>
                </div>
                <%-- End Panel--%>
            </div>
            <%-- End Col--%>
        </div>
        <%-- End Row--%>
    </div>
    <%--End Container--%>
</asp:Content>
