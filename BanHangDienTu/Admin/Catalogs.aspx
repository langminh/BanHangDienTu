<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Catalogs.aspx.cs" Inherits="BanHangDienTu.Admin.AddCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Assets/vendor/jquery/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <!-- Page Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Danh mục mặt hàng</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
<<<<<<< HEAD
            <div class="col-md-12">
                <div class="form-é
                    group">
                    <asp:Button CssClass="form-control btn btn-success" runat="server" ID="btnAdd" Text="Thêm mới mặt hàng"></asp:Button>
=======
            <div class="col-md-8">
                <div class="form-group">

                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="form-control btn btn-success" Text="Thêm mới danh mục" />
>>>>>>> bbfa43aa866bc22b359c16a14d61a223b53eaf40
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
<<<<<<< HEAD
                        <%--<asp:SqlDataSource ID="dsCatalogs" runat="server"
                            ConnectionString="<%$ ConnectionStrings:QLBakhôngrồinHang %>"
                            ProviderName="System.Data.SqlClient"
                            SelectCommand="select * from [dbo].[Catalog]"></asp:SqlDataSource>--%>

                        <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>

                        <asp:Repeater runat="server" ID="rpEmployees" OnItemCommand="rpEmployees_ItemCommand">
                            <HeaderTemplate>
                                <table>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>&nbsp;</th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# rpEmployees.Items.Count - 1 %></td>
                                    <td><%# Eval("Name") %></td>
                                    <td><%# Eval("Age") %></td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="lnkUpdate" CommandName="Update" CommandArgument='<%# Bind("ID") %>'>Sửa</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>






                        <br />
                        <asp:ListView ID="list" runat="server">
                            <LayoutTemplate>
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <td>#</td>
                                            <td>
                                                <asp:LinkButton ID="lnkSortName" CommandName="sort" CssClass="tile-name" CommandArgument="Name" runat="server">Tên</asp:LinkButton></td>
                                            <td></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                                    </tbody>
                                </table>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.DataItemIndex + 1 %></td>
                                    <td><%#Eval("Name") %></td>
                                    <td class="last">
                                        <a href="#" id="btnUpdate" data-tonge="" data-toggle="modal" data-target="#Update-modal" class="edit-delete">Sửa</a>|<a data-toggle="modal" data-target="#login-modal" href="#" id="btnDelete" class="edit-delete">Xóa</a>
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                        <div class="row text-right right-btn">
                            <asp:DataPager ID="dtpArticles" runat="server" PagedControlID="list" PageSize="10" ClientIDMode="Static">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowPreviousPageButton="false"
                                        ShowNextPageButton="false" ButtonCssClass="prev-page text-info" />
                                    <asp:NumericPagerField ButtonType="Link" CurrentPageLabelCssClass="btn-cur-page text-info"
                                        NumericButtonCssClass="btn-num-page text-success" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="true" ShowNextPageButton="false"
                                        ShowPreviousPageButton="false" ButtonCssClass="next-page text-info" />
                                </Fields>
                            </asp:DataPager>
                        </div>
=======
                        <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
                        
                        <asp:Repeater runat="server" ID="rpCatalog" >

                        </asp:Repeater>

                        
                        <asp:DataPager ID="pager" runat="server" PageSize="5" PagedControlID="catalogList">
                            <Fields>
                                <asp:NextPreviousPagerField PreviousPageText="Trang trước" ShowFirstPageButton="false" ShowNextPageButton="false" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField LastPageText="Trang cuối" NextPageText="Trang kế" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                            </Fields>
                        </asp:DataPager>
>>>>>>> bbfa43aa866bc22b359c16a14d61a223b53eaf40
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
<<<<<<< HEAD
    <asp:Panel ID="Panel1" runat="server" CssClass="modal-dialog">
        <div class="">

            <div class="popupmodal-container">
                <h1>Thêm mới mặt hàng</h1>
                <br />
                <asp:HiddenField runat="server" ID="hidenID" Value="" />
                <fieldset>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="DropDownList1">Danh mục hàng:</label>
                            <asp:TextBox ID="txtName" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <asp:Button ID="btnOk" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Thêm hàng" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <a href="#" class="btn btn-lg btn-success btn-block" id="btnClose">Đóng</a>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </asp:Panel>
    <act:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="btnAdd" BackgroundCssClass="" CancelControlID="btnClose" OkControlID="btnOk">
    </act:ModalPopupExtender>
=======

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
                    <asp:Button runat="server" id="btnCreateOk" OnClick="btnCreateOk_Click" CssClass="btn btn-success" Text="Cập nhật"></asp:Button>
                    <button type="button" class="btn btn-info" id="btn-cancel-create">Hủy</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Update -->
    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="width: 668px;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><span id="myModalLabel"></span>Sửa thông tin Catalog</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <div class="col-md-12 col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon">Tên danh mục: </span>
                                <asp:TextBox ID="txtNameCatalog" TextMode="SingleLine" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button runat="server" id="btnOk" OnClick="btnOk_Click" CssClass="btn btn-success" Text="Cập nhật"></asp:Button>
                    <button type="button" class="btn btn-info" id="btnCancel">Hủy</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Delete -->
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
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
                    <asp:Button runat="server" id="btnDelete" OnClick="Delete_Click" CssClass="btn btn-success" Text="Xóa"></asp:Button>
                    <button type="button" class="btn btn-info" id="btn-cancel-delete">Hủy</button>
                </div>
            </div>
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

>>>>>>> bbfa43aa866bc22b359c16a14d61a223b53eaf40
    <!-- /.container-fluid -->
</asp:Content>
