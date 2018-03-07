<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Catalogs.aspx.cs" Inherits="BanHangDienTu.Admin.AddCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Assets/vendor/jquery/jquery.min.js"></script>
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
                    <a href="#" class="form-control btn btn-success" data-toggle="modal" data-target="#login-modal">Thêm mới mặt hàng</a>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Danh mục</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <% int i = 1; %>
                                <% foreach (BanHangDienTu.Admin.Models.CatalogModel item in list)
                                    { %>
                                    <tr>
                                        <td><% Response.Write(i); %></td>
                                        <td><% Response.Write(item.Name); %></td>
                                        <td class="last"><a href="#" data-toggle="modal" data-target="#login-modal" data-value="<%= item.ID %>" id="btnUpdate" class="edit-delete">Sửa</a>|<a href="#" id="btnDelete" data-value="<%= item.ID %>" class="edit-delete">Xóa</a></td>
                                    </tr>
                                    <% i++; %>
                                <%} %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->
    </div>
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="popupmodal-container">
                <h1>Thêm mới mặt hàng</h1>
                <br>
                <form>
                    <asp:HiddenField runat="server" ID="hidenID" Value =""/>
                    <fieldset>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="DropDownList1">Danh mục hàng:</label>
                                <asp:TextBox ID="txtName" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Thêm hàng" OnClick="btnAdd_Click" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <a href="#" class="btn btn-lg btn-success btn-block" id="btnClose">Đóng</a>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
        <script>
        $(document).ready(function () {
            $('#btnClose').click(function (e) {
                e.preventDefault();
                $('#login-modal').modal('toggle');
            })
            $('#btnUpdate').click(function (e) {
                e.preventDefault();

                
                //$('#ContentPlaceHolder1_hidenID').val(this.data('value'));
                window.console.log('value is set');
            })
        })
        
    </script>
    <!-- /.container-fluid -->
</asp:Content>
