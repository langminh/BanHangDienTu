<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Catalogs.aspx.cs" Inherits="BanHangDienTu.Admin.AddCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add new Catalog</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" CssClass="form-control btn btn-success" Text="Thêm mới danh mục" />
                    
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
                                <tr>
                                    <td>1</td>
                                    <td>SmartPhone</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Mouse</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>CPU</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Keyboard</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Laptop</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Mainboard</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Monitor</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>CoolAir</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>PSU</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>RAM</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Case</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Stronges</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Tablet</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>USB</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>VGA</td>
                                    <td class="last"><a href="#" class="edit-delete">Sửa</a>|<a href="#" class="edit-delete">Xóa</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</asp:Content>
