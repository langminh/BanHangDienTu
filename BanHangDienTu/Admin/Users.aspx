<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="BanHangDienTu.Admin.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Assets/stytle.css" rel="stylesheet" />
    <script src="Assets/vendor/jquery/jquery.min.js"></script>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="Assets/vendor/bootstrap/js/bootstrap-notify.js"></script>
    <script src="Assets/vendor/bootstrap/js/bootstrap-notify.min.js"></script>
    <script src="Assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            height: 245px;
        }

        td img {
            width: 50px;
            height: 50px;
        }

        .popupmodal-container {
            padding: 0px;
            border-radius: 5px;
        }

        .modal-header, h4, .close {
            background-color: #5cb85c;
            color: white !important;
            text-align: center;
            font-size: 30px;
        }

        .modal-footer {
            background-color: #f9f9f9;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Người dùng</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="form-row">
                <div class="form-group col-md-6 col-sm-6 col-xs-6">
                    <input name="txtSearch" type="text" id="ContentPlaceHolder1_txtSearch" class="form-control">
                </div>
                <div class="form-group col-md-2 col-sm-2 col-xs-2">
                    <input type="submit" name="btnSearch" value="Tìm kiếm" id="ContentPlaceHolder1_btnSearch" class="btn btn-success">
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    <div class="table-responsive">
                        <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
                        <asp:ListView runat="server" ID="listUser" OnPagePropertiesChanging="listUser_PagePropertiesChanging" OnItemCommand="listUser_ItemCommand">
                            <LayoutTemplate>
                                <table width="100%" class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <td>#</td>
                                            <td>Username</td>
                                            <td>Tên</td>
                                            <td>Avatar</td>
                                            <td>Địa chỉ</td>
                                            <td>Điện thoại</td>
                                            <td>Trạng thái</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.DataItemIndex + 1 %></td>
                                    <td><%# Eval("UserName") %></td>
                                    <td><%# Eval("FullName") %></td>
                                    <td>
                                        <img src='../Avata/<%# Eval("Avatar") %>' /></td>
                                    <td><%# Eval("Address") %></td>
                                    <td><%# Eval("Phone") %></td>
                                    <td><%# Eval("IsLock") %></td>
                                    <td>
                                        <asp:LinkButton runat="server" CommandName="UpdateItem" CommandArgument='<%#Eval("UserID") %>' CssClass="edit-delete" Text="Chi tiết" ID="Update"></asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton runat="server" CommandName="DeleteItem" CommandArgument='<%#Eval("UserID") %>' CssClass="edit-delete" Text="Xóa" ID="LinkButton1"></asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 col-md-push-4">

                                    <asp:DataPager ID="pager" runat="server" PageSize="5" PagedControlID="listUser">
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
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Modal Update -->
        <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog  modal-lg">
                <asp:UpdatePanel ID="updateModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>

                        <div class="popupmodal-container">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title"><span id="delete-label"></span>Thông tin người dùng</h4>
                            </div>
                            <br>
                            <form>
                                <fieldset>
                                    <div class="form-row">
                                        <div class="form-group col-md-12 text-center">
                                            <img runat="server" id="userAvata" />
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Username:</label>
                                            <asp:TextBox ID="txtUsername" ReadOnly="true" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Username"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Tên:</label>
                                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Tên"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Địa chỉ:</label>
                                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Địa chỉ"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Điện thoại:</label>
                                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Điện thoại"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Giới tính:</label>
                                            <asp:TextBox ID="txt_GT" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Giới tính"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Vai  trò:</label>
                                            <asp:TextBox ID="txtRole" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Vai trò"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label>Trạng thái:</label>
                                            <asp:CheckBox ID="checkbox1" runat="server" Text="Khóa" CssClass="checkbox-inline" />
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="" OnClick="btnAdd_Click" />
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <button class="btn btn-lg btn-success btn-block" data-dismiss="modal" id="btnClose">Đóng</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('#btnClose').click(function (e) {
                e.preventDefault();
                $('#login-modal').modal('toggle');
            })

        });
    </script>
    <!-- /.container-fluid -->
</asp:Content>
