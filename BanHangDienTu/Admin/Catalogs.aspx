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
            <div class="col-md-12">
                <div class="form-é
                    group">
                    <asp:Button CssClass="form-control btn btn-success" runat="server" ID="btnAdd" Text="Thêm mới mặt hàng"></asp:Button>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
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
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
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
    <!-- /.container-fluid -->
</asp:Content>
