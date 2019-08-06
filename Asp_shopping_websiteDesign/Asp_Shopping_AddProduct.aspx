<%@ Page Title="" Language="C#" MasterPageFile="~/Asp_Shopping_MasterPage.Master" AutoEventWireup="true" CodeBehind="Asp_Shopping_AddProduct.aspx.cs" Inherits="Asp_shopping_websiteDesign.Asp_Shopping_AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <br />

        <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group" style="text-align:center">
                        <h2>
                            <label>Add the Product</label>
                        </h2>                       
                    </div>
                </div>
                <div class="col-md-3"></div>
        </div>

        <div class="row">

                <div class="col-md-3"></div>
                <div class="col-md-6">
                    
                    <div class="form-group">
                        <label><b>Product Name</b></label>
                        <asp:TextBox  ID="txtProductName" CssClass="form-control" runat="server" />
                        
                    </div>

                    <div class="form-group">
                        <label><b>Category</b></label>
                        <br />
                        <asp:DropDownList ID="dpCategory" runat="server" CssClass="form-control">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Mobiles</asp:ListItem>
                            <asp:ListItem>TVs & Appliances</asp:ListItem>
                            <asp:ListItem>Men</asp:ListItem>
                            <asp:ListItem>Women</asp:ListItem>
                            <asp:ListItem>Home & Furniture</asp:ListItem>
                            <asp:ListItem>Sports</asp:ListItem>
                            <asp:ListItem>Books</asp:ListItem>
                        </asp:DropDownList>                        
                    </div>

                    <div class="form-group">
                        <label><b>Description</b></label>
                        <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server" />
                        
                    </div>
                    
                    <div class="form-group">
                        <label><b>Price</b></label>
                        <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server" />
                    </div>

                    <div class="form-group">
                        <label><b>Quantity</b></label>
                        <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server" />
                    </div>

                    <div class="form-group">
                        <label><b>Post a Image</b></label>
                        <asp:FileUpload ID="fuImage" CssClass="form-control-file" runat="server" />
                    </div>


                </div>               
                <div class="col-md-3"></div>
            </div>

        <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnSubmit"  class="btn btn-primary" runat="server" Text="Sumbit" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnReset" class="btn btn-danger" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </div>
                    <div class="col-sd-4"></div>
        </div>

    </div>

</asp:Content>
