<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="SE256_IArsenault_Lab1.Tables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container tables-section">
         <div class="row">
             <div class="col-md-4">
                <%-- Tables Header Title--%>
                 <h2 class="text-center">Tables</h2>
             </div>
           
            <div class="col-md-12">
               <%-- Tables Gridview--%>
                <asp:GridView ID="gvTables" runat="server">
                    <%--Columns--%>
                    <Columns>

                        <asp:BoundField />

                        <asp:BoundField />

                    </Columns>
                </asp:GridView>

            </div><%-- End Col--%>
        </div> <%--End Row--%>
    </div> <%--End Container --%>
</asp:Content>
