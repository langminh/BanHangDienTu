<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BanHangDienTu.Admin.AddProduct" %>

<%@ Register src="AddItem.ascx" tagname="AddItem" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add new Product</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
            
            <uc1:AddItem ID="AddItem1" runat="server" />
            
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</asp:Content>
