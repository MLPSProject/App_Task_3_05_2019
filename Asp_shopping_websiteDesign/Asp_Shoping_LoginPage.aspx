<%@ Page Title="" Language="C#" MasterPageFile="~/Asp_Shopping_MasterPage.Master" AutoEventWireup="true" CodeBehind="Asp_Shoping_LoginPage.aspx.cs" Inherits="Asp_shopping_websiteDesign.Asp_Shoping_LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <br />
        <br />
                <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group" style="text-align:center">
                        <h2>
                            <label>Login In Page</label>
                        </h2>                       
                    </div>
                </div>
                <div class="col-md-3"></div>
        </div>

        <div class="row">

                <div class="col-md-3"></div>
                <div class="col-md-6">
                    
                    <div class="form-group">
                        <label><b>UserName</b></label>
                        <asp:TextBox  ID="txtUserName" CssClass="form-control" runat="server" />    
                    </div>

                    <div class="form-group">
                        <label><b>Password</b></label>
                        <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server" />
                    </div>

                </div>               
                <div class="col-md-3"></div>
        </div>

        <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnRegister" class="btn btn-danger" runat="server" Text="Register" />
                    </div>
                    <div class="col-sd-4"></div>
        </div>
    </div>

</asp:Content>
