<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="SE256_IArsenault_Lab1.Reservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <%-- Resrevations Header Title--%>
                <h2 class="text-center">Reservations</h2>
            </div>

            <div class="col-md-12">
                <%--Reservations Gridview --%>
                <asp:GridView ID="gvReservations" runat="server">
                    <%--Columns--%>
                    <Columns>

                        <asp:BoundField />

                        <asp:BoundField />

                    </Columns>

                </asp:GridView>

            </div> <%--End Gridview Column--%>
        </div> <%--End Row --%>
    </div> <%-- End Container--%>
</asp:Content>
