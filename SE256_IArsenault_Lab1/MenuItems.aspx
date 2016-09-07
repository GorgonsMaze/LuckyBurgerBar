<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MenuItems.aspx.cs" Inherits="SE256_IArsenault_Lab1.MenuItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container menu-items-section">
        <div class="row">
            <div class="col-md-12">
                <%-- Header Title for Menu Items --%>
                <h2 class="text-center">Menu Items</h2>
            </div>

            <div class="col-md-12">
                <%-- Gridview Control--%>
                <asp:GridView ID="gvMenuItems" runat="server">
                    <%--Columns--%>
                    <Columns>
                        <asp:BoundField />
                        <asp:BoundField />
                    </Columns>
                </asp:GridView>

            </div><%-- End Col--%>
        </div> <%--End Row--%>
    </div><%-- End Container--%>
</asp:Content>
