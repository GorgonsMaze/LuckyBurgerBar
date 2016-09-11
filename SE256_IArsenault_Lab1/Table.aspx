<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="SE256_IArsenault_Lab1.Table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container table-section">
        <h2 class="text-center">Table list</h2>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="text-center">
                    <%--Error message for Update or Add--%>
                    <asp:Label ID="lblMessage" runat="server" Text="" CssClass=""></asp:Label>
                </div>
                <%-- Begin Panel--%>
                <div class="panel panel-default hoverable-dark">
                    <div class="panel-body">
                        <fieldset>
                            <legend class="text-center">Fill out Table Information</legend>
                            <%--  Table Name Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblTableName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtTableName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvTableName" runat="server" ErrorMessage="* Please enter table name" CssClass="alert" ControlToValidate="txtTableName"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <%--  Table Description Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblTableDesc" runat="server" Text="Description" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtTableDesc" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvTableDesc" runat="server" ErrorMessage="* Please enter table description" CssClass="alert" ControlToValidate="txtTableDesc"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <%--  Table Section Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblTableSection" runat="server" Text="Section" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:DropDownList ID="ddlTableSection" runat="server" CssClass="select-asp-styling" AppendDataBoundItems="true" DataSourceID="sdsTableSection" DataTextField="sect_name" DataValueField="sect_id">
                                        <asp:ListItem Text="Please Select a Table Section..." Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <%--SQL Data Source--%>
                                    <asp:SqlDataSource ID="sdsTableSection" runat="server" ConnectionString='<%$ ConnectionStrings:se256_arsenaultiConnectionString %>' SelectCommand="sections_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <%--Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvMenu" runat="server" InitialValue="0" ErrorMessage="* Please select table section" CssClass="alert" ControlToValidate="ddlTableSection"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                            <%--  Table Seat Count Text Input--%>
                            <div class="form-group">
                                <asp:Label ID="lblTableSeatCount" runat="server" Text="Seat Count" CssClass="col-lg-3 control-label"></asp:Label>
                                <div class="col-lg-12">
                                    <asp:TextBox ID="txtTableSeatCount" runat="server" CssClass="form-control" placeholder="Seat Count"></asp:TextBox>
                                    <%-- Required Validator--%>
                                    <asp:RequiredFieldValidator ID="rfvTableSeatCount" runat="server" ErrorMessage="* Please enter seat count" CssClass="alert" ControlToValidate="txtTableSeatCount"></asp:RequiredFieldValidator>
                                    <%--Compare validator--%>
                                    <asp:CompareValidator ID="cmpvSeatCount" runat="server" ErrorMessage="* Seat count must be a whole number" Type="Integer" Operator="DataTypeCheck" ControlToValidate="txtTableSeatCount" CssClass="alert"></asp:CompareValidator>
                                </div>
                            </div>


                            <%-- Table Is Active Checbox Input--%>
                            <div class="form-group">
                                <div class="col-lg-12 checkbox text-center">
                                    <asp:CheckBox ID="chkTableIsActive" runat="server" /><asp:Label ID="lblTableIsActive" runat="server" Text="Is Active"></asp:Label>
                                </div>
                            </div>



                            <%--  Table Button Group--%>
                            <div class="form-group">
                                <div class="col-lg-12 text-center">
                                    <%-- Cancel--%>
                                    <asp:Button ID="btnTableCancel" runat="server" href="" CssClass="btn btn-default" CausesValidation="false" Text="Cancel" OnClick="btnTableCancel_Click" />
                                    <%--Update--%>
                                    <asp:Button ID="btnAddUpdateTable" runat="server" CssClass="btn btn-danger" Text="" OnClick="btnAddUpdateTable_Click" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <%-- End Panel--%>
            </div>
        </div>
    </div>
    <%--End Container--%>
</asp:Content>
