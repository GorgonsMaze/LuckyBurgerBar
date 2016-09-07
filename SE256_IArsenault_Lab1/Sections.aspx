<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Sections.aspx.cs" Inherits="SE256_IArsenault_Lab1.Sections" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container  sections-containe">
        <div class="row">
            <div class="col-md-12">
                 <h2 class="text-center">Sections</h2>
            </div>
            <div class="col-md-12">

                <asp:GridView ID="gvSections" runat="server">
                    <Columns>


                        <asp:BoundField />

                        <asp:BoundField />


                    </Columns>
                </asp:GridView>

            </div><%-- End Col--%>
        </div> <%-- End Row--%>
    </div> <%--End Container--%>
</asp:Content>
