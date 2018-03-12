<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="BanHangDienTu.Admin.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Assets/css/reponsive.css" rel="stylesheet" />

    <!-- Bootstrap Core CSS -->
    <link href="Assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="Assets/vendor/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Assets/dist/css/sb-admin-2.css" rel="stylesheet" />
    <link href="Assets/css/style.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="Assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- jQuery -->
    <script src="Assets/vendor/jquery/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="dsCatalogs" runat="server"
                ConnectionString="<%$ ConnectionStrings:QLBanHang %>"
                ProviderName="System.Data.SqlClient"
                SelectCommand="select * from [dbo].[Catalog]"></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="CatalogID"
                DataSourceID="dsCatalogs">
                <ItemTemplate>
                    <tr>
                        <td><%# (Container.DataItemIndex + 1).ToString()%></td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></td>
                        <td>
                            <asp:LinkButton ID="EditButton" CommandName="Edit" runat="server" OnClick="EditButton_Click">Edit</asp:LinkButton></td>
                        <td>
                            <asp:LinkButton ID="DeleteButton" CommandName="Delete" runat="server">Delete</asp:LinkButton></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table id="myTable" border="0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="itemPlaceholder" runat="server"></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                ConnectionString="<%$  ConnectionStrings:QLBanHang  %>"
                ProviderName="System.Data.SqlClient"
                SelectCommand="select * from [dbo].[Catalog]">
                <SelectParameters>
                    <asp:Parameter Name="CatalogID" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <%-- your parameters --%>
                </UpdateParameters>
            </asp:SqlDataSource>

            <div id="item-detail" class="modal hide fade">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3>My Record</h3>
                </div>
                <div class="modal-body">
                    <asp:ListView ID="ListView2" runat="server"
                        DataKeyNames="ItemID"
                        DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            <tr>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' /></td>
                                <td>
                                    <td>
                                        <asp:LinkButton ID="UpdateButton" CommandName="Update" runat="server">Update</asp:LinkButton></td>
                                    <td>
                                        <asp:LinkButton ID="CancelButton" CommandName="Cancel" runat="server">Cancel</asp:LinkButton></td>
                            </tr>
                        </EditItemTemplate>
                        <LayoutTemplate>
                            <table id="myTable" border="0">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr id="itemPlaceholder" runat="server"></tr>
                                </tbody>
                            </table>
                        </LayoutTemplate>
                    </asp:ListView>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Close</a>
                </div>
            </div>

        </div>
    </form>
    

    <!-- Bootstrap Core JavaScript -->
    <script src="Assets/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="Assets/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="Assets/dist/js/sb-admin-2.js"></script>
</body>
</html>
