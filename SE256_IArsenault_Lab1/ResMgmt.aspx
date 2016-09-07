<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResMgmt.aspx.cs" Inherits="SE256_IArsenault_Lab1.ResMgmt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container res-mgmt-section">
        <div class="row">
            <div class="col-md-12">
                 <h2 class="text-center">Reservation Management</h2>
            </div>
            <div class="col-md-12">

                <asp:GridView ID="gvResMgmt" runat="server">
                    <Columns>


                        <asp:BoundField />

                        <asp:BoundField />


                    </Columns>
                </asp:GridView>

            </div><%-- End Col--%>
        </div> <%-- End Row--%>
    </div> <%--End Container--%>
</asp:Content>
