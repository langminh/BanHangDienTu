<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Catalogs.aspx.cs" Inherits="BanHangDienTu.Admin.AddCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Danh mục mặt hàng</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="form-control btn btn-success" Text="Thêm mới danh mục" />
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
                        <asp:ListView ID="catalogList" runat="server" OnPagePropertiesChanging="catalogList_PagePropertiesChanging" OnItemCommand="catalogList_ItemCommand">
                            <LayoutTemplate>
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Danh mục</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.DataItemIndex + 1 %></td>
                                    <td><%# Eval("Name") %></td>
                                    <td class="last">
                                        <asp:LinkButton runat="server" CommandName="UpdateItem" CommandArgument='<%#Eval("CatalogID") %>' CssClass="edit-delete" Text="Sửa" ID="Update" OnClick="Update_Click"></asp:LinkButton>
                                        | 
                                        <asp:LinkButton runat="server" CommandName="DeleteItem" CommandArgument='<%#Eval("CatalogID") %>' CssClass="edit-delete" Text="Xóa" ID="Delete" OnClick="Delete_Click"></asp:LinkButton>
                                    </td>
                                    <%--<td class="last"><asp:HyperLink href="#" class="edit-delete" runat="server" id="<%# Eval("CatalogID") %>" onclick="Update();"><%# Eval("CatalogID") %></asp:HyperLink>|<a runat="server" href="#" class="edit-delete">Xóa</a></td>--%>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                        <asp:DataPager ID="pager" runat="server" PageSize="5" PagedControlID="catalogList">
                            <Fields>
                                <asp:NextPreviousPagerField PreviousPageText="Trang trước" ShowFirstPageButton="false" ShowNextPageButton="false" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField LastPageText="Trang cuối" NextPageText="Trang kế" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->
    </div>

    <!-- Modal Create -->
    <div class="modal fade" id="create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="width: 668px;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><span id="create-label"></span>Tạo mới danh mục</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <div class="col-md-12 col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon">Tên danh mục: </span>
                                <asp:TextBox ID="txtName" TextMode="SingleLine" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button runat="server" ID="btnCreateOk" OnClick="btnCreateOk_Click" CssClass="btn btn-success" Text="Cập nhật"></asp:Button>
                    <button type="button" class="btn btn-info" id="btn-cancel-create">Hủy</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Update -->
    <div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <asp:UpdatePanel ID="updateModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-content" style="width: 668px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title"><span id="myModalLabel"></span>Sửa thông tin Catalog</h4>
                        </div>
                        <div class="modal-body">
                            <div class="input-group">
                                <div class="col-md-12 col-sm-12">
                                    <div class="input-group">
                                        <asp:HiddenField runat="server" ID="txtCatalogID_Update" />
                                    </div>


                                    <br />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email">Tên danh mục:</label>
                                <asp:TextBox ID="txtCatalogName_Update" TextMode="SingleLine" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button runat="server" ID="btnOk" OnClick="btnOk_Click" CssClass="btn btn-success" Text="Cập nhật"></asp:Button>
                            <button type="button" class="btn btn-info" id="btnCancel" data-dismiss="modal">Hủy</button>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <!-- Modal Delete -->
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <asp:UpdatePanel ID="deleteModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-content" style="width: 668px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title"><span id="delete-label"></span>Xóa</h4>
                        </div>
                        <div class="modal-body">
                            <div class="input-group">
                                <div class="col-md-12 col-sm-12">
                                    <div class="input-group text-center">
                                        <asp:Label runat="server" ID="delete_name" Text="Bạn có chắc chắn muốn xóa danh mục sản phẩm này?"></asp:Label>
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button runat="server" ID="btnDelete" OnClick="Delete_Click" CssClass="btn btn-success" Text="Xóa"></asp:Button>
                            <button type="button" class="btn btn-info" data-dismiss="modal" id="btn-cancel-delete">Hủy</button>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('#btnCancel').click(function (e) {
                e.preventDefault();
                $('#update').modal('hide');
            });

            $('#btn-cancel-delete').click(function (e) {
                e.preventDefault();
                $('#delete').modal('hide');
            });

            $('#btn-cancel-create').click(function (e) {
                e.preventDefault();
                $('#create').modal('hide');
            });
        })
    </script>

    <!-- /.container-fluid -->
</asp:Content>
