<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BanHangDienTu.Admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh mục sản phẩm</title>
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
