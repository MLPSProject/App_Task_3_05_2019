<%@ Page Title="" Language="C#" MasterPageFile="~/Asp_Shopping_MasterPage.Master" AutoEventWireup="true" CodeBehind="Asp_shopping_Order.aspx.cs" Inherits="Asp_shopping_websiteDesign.Asp_shopping_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <br />

        <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group" style="text-align:center">
                        <h2>
                            <label>Order Details</label>
                        </h2>                       
                    </div>
                </div>
                <div class="col-md-3"></div>
        </div>

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

                    <div class="form-group">
                        <label><b>Customer Id</b></label>
                        <asp:Label ID="lblCustomer" CssClass="form-control" Text="ddd" runat="server"/>                       
                    </div>    

                    <div class="form-group">
                        <label><b>Product Id</b></label>
                        <asp:Label ID="lblProductId" CssClass="form-control" Text="" runat="server"/>   
                    </div>
                
                    <div class="form-group">
                        <label><b>Product Name</b></label>
                        <asp:Label ID="lblProductName" CssClass="form-control" Text="" runat="server"/>                       
                    </div>
                
                    <div class="form-group">
                        <label><b>Quantity</b></label>
                        <%--<asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"  OnTextChanged="dpQuantity_SelectedIndexChanged"/>--%>
                        <asp:dropdownlist ID="dpQuantity" CssClass="form-control" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="dpQuantity_SelectedIndexChanged" >
                            <asp:ListItem Text="--Select--"/>
                            <asp:ListItem Text="1"></asp:ListItem>
                            <asp:ListItem Text="2"></asp:ListItem>
                            <asp:ListItem Text="3"></asp:ListItem>
                            <asp:ListItem Text="4"></asp:ListItem>
                            <asp:ListItem Text="5"></asp:ListItem>
                            <asp:ListItem Text="6"></asp:ListItem>
                            <asp:ListItem Text="7"></asp:ListItem>
                            <asp:ListItem Text="8"></asp:ListItem>
                            <asp:ListItem Text="9"></asp:ListItem>
                            <asp:ListItem Text="10"></asp:ListItem>
                        </asp:dropdownlist>
                        
                    </div>

                    <div class="form-group">
                        <label><b>TotalPrice</b></label>
                        <asp:Label ID="lblTotalPrice" CssClass="form-control" Text="" runat="server" />
                    </div>

                    

                    
                </div>
            <div class="col-md-3"></div>
        </div>

        <div class="row">
            <div class="col-md-4"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnPlaceOrder" class="btn btn-primary" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnReset" class="btn btn-danger" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </div>
                    <div class="col-sd-4"></div>
        </div>

    </div>

</asp:Content>
