<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BanHangDienTu.Admin.AddProduct" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<%@ Register Src="AddItem.ascx" TagName="AddItem" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Assets/stytle.css" rel="stylesheet" />
    <script src="Assets/vendor/jquery/jquery.min.js"></script>
    <script src="ckeditor/ckeditor.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            height: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Mặt hàng</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="form-group col-md-3 col-sm-3 col-xs-3">
                <label for="ContentPlaceHolder1_cbxCatalog">Lọc theo:</label>
                <asp:DropDownList runat="server" ID="cbxCatalog" CssClass="btn btn-primary dropdown-toggle" DataTextField="Name" DataValueField="CatalogID" OnSelectedIndexChanged="cbxCatalog_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
            <div class="form-group col-md-2">
                <asp:Button ID="btnFilter" runat="server" CssClass="btn btn-success form-control" Text="Lọc" />
            </div>
            <div class="form-group col-md-3 col-sm-3 col-xs-3">
                <%--<label for="ContentPlaceHolder1_txtSearch">Nhập tên sản phẩm:</label>--%>
                <asp:TextBox runat="server" ID="txtSearch" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group col-md-2 col-sm-2 col-xs-2">
                <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-success form-control" Text="Tìm kiếm" />
            </div>
            <div class="form-group col-md-2 col-sm-3 col-xs-3">
                <a href="#" data-toggle="modal" class="btn btn-primary form-control" data-target="#login-modal">Thêm mới mặt hàng</a>
            </div>
        </div>





        <%-- <uc1:AddItem ID="AddItem1" runat="server" />--%>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="1284px">
                        <ItemTemplate>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><%# Eval("Name") %></h3>
                                </div>
                                <div class="panel-image">
                                    <img src="../<%# Eval("Image") %>" class="panel-image-preview" />
                                </div>
                                <div class="panel-body">
                                    <h4>Mô tả:</h4>
                                    <p><%# Eval("Describe") %></p>
                                </div>
                                <div class="panel-footer text-center">
                                    <a href="#edit"><span class="fa fa-edit"></span></a>
                                    <a href="#delete"><span class="fa fa-times"></span></a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <%--                    <asp:ListView ID="ListView1" runat="server" OnPagePropertiesChanging="ListView1_PagePropertiesChanged">
                        <ItemTemplate>
                            <div class="col-md-4 col-sm-4">
                                <div class="panel">

                                    <div class="panel-heading">
                                        <div class="img-thumbnail">
                                            <img src="../<%# Eval("Image") %>" />
                                        </div>
                                        <div class="panel-title">
                                            <%# Eval("Name") %>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <%# Eval("Describe") %>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>


                    </asp:ListView>
                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="9">
                        <Fields>
                            <asp:NextPreviousPagerField PreviousPageText="Trang trước" ShowFirstPageButton="false" ShowNextPageButton="false" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField LastPageText="Trang cuối" NextPageText="Trang kế" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                        </Fields>
                    </asp:DataPager>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
    <!-- /.container-fluid -->

    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="popupmodal-container">
                <h1>Thêm mới mặt hàng</h1>
                <br>
                <form>
                    <fieldset>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="DropDownList1">Danh mục hàng:</label>
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Tên hàng:</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Tên Hàng"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Giá:</label>
                                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" TextMode="Number" placeholder="Giá"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Sales:</label>
                                <asp:TextBox ID="txtSales" runat="server" CssClass="form-control" TextMode="Number" placeholder="Sales"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Số lượng:</label>
                                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" TextMode="Number" placeholder="Số lượng"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Ảnh:</label>
                                <asp:FileUpload runat="server" ID="fileUpload" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Mô tả:</label>
                                <asp:TextBox ID="txtDescribe" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Mô tả"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label>Chi tiết sản phẩm:</label>
                                <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtContent"></asp:TextBox>
                                <%--<CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>--%>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:CheckBox ID="ckbRememberMe" runat="server" Text="Remember me" CssClass="checkbox-inline" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Thêm hàng" />
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

        })
        function showDetails(btn) {
            //var animalType = animal.getAttribute("data-animal-type");
            //alert(animal.innerHTML + " là một loại " + animalType + ".");
            var result = btn.getAttribute("data-value");

        }
    </script>
    <script>
        config = {};
        config.language = 'vi';
        config.entities_latin = false;
        config.toolbarGroups = [
            { name: 'basicstyles', groups: ['basicstyles', 'cleanup'] },
            { name: 'clipboard', groups: ['clipboard', 'undo'] },
            { name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi', 'paragraph'] },
            { name: 'editing', groups: ['find', 'selection', 'spellchecker', 'editing'] },
            { name: 'links', groups: ['links'] },
            { name: 'insert', groups: ['insert'] },
            { name: 'forms', groups: ['forms'] },
            { name: 'tools', groups: ['tools'] },
            { name: 'document', groups: ['mode', 'document', 'doctools'] },
            { name: 'others', groups: ['others'] },
            '/',
            { name: 'styles', groups: ['styles'] },
            { name: 'colors', groups: ['colors'] },
            { name: 'about', groups: ['about'] }
        ];

        config.removeButtons = 'Underline,Subscript,Superscript,Blockquote,About,Styles,Format,Image,Table,HorizontalRule,SpecialChar,Maximize,Source,Cut,Copy,Paste,PasteText,PasteFromWord,Scayt';
        CKEDITOR.replace('ContentPlaceHolder1_txtContent', config);

    </script>
</asp:Content>
