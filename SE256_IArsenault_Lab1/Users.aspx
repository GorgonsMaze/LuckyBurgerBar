<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="SE256_IArsenault_Lab1.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container users-section">
         <div class="row">
            <div class="col-md-4">
                <h2 class="text-center">Users</h2>
            </div>

            <div class="col-md-4">
               <%-- Users Gridview--%>
                <asp:GridView ID="GridView1" runat="server">
                    <%--Columns--%>
                    <Columns>

                    </Columns>

                </asp:GridView>

            </div> <%--End Col--%>
        </div> <%--End Row --%>
    </div><%-- End Container--%>
</asp:Content>
