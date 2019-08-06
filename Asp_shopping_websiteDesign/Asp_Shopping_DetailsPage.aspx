<%@ Page Title="" Language="C#" MasterPageFile="~/Asp_Shopping_MasterPage.Master" AutoEventWireup="true" CodeBehind="Asp_Shopping_DetailsPage.aspx.cs" Inherits="Asp_shopping_websiteDesign.Asp_Shopping_DetailsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <br />

        <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group" style="text-align:center">
                        <h2>
                            <label>Product Details</label>
                        </h2>                       
                    </div>
                </div>
                <div class="col-md-3"></div>
        </div>

        <br />
        <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group" style="text-align:center">
                        <asp:Image ID="imgProductImage" Width="118px" Height="177px" runat="server" CssClass="auto-style2"  />                       
                    </div>
                </div>
                <div class="col-md-3"></div>
        </div>
        

        <div class="row">

                <div class="col-md-3"></div>
                <div class="col-md-6">
                    
                    <div class="form-group">
                        <label><b>Product Name</b></label>
                        <asp:Label ID="lblProductName" CssClass="form-control" Text="" runat="server"/>   
                    </div>

                    <div class="form-group">
                        <label><b>Category</b></label>
                        <asp:Label ID="lblCategory" CssClass="form-control" Text="" runat="server"/>                       
                    </div>

                    <div class="form-group">
                        <label><b>Description</b></label>
                        <asp:Label ID="lblDescription" CssClass="form-control" Text="" runat="server" />
                    </div>
                    
                    <div class="form-group">
                        <label><b>Price</b></label>
                        <asp:Label ID="lblPrice" CssClass="form-control" Text="" runat="server" />
                    </div>

                    <div class="form-group">
                        <label><b>Quantity</b></label>
                        <asp:Label ID="lblQuantity" CssClass="form-control" Text="" runat="server" />
                    </div>

                    
                </div>               
                <div class="col-md-3"></div>
            </div>
    </div>

</asp:Content>
