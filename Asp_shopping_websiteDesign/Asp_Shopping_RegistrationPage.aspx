<%@ Page Title="" Language="C#" MasterPageFile="~/Asp_Shopping_MasterPage.Master" AutoEventWireup="true" CodeBehind="Asp_Shopping_RegistrationPage.aspx.cs" Inherits="Asp_shopping_websiteDesign.Asp_Shopping_RegistrationPage" %>
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
                            <label>Registration Page</label>
                        </h2>                       
                    </div>
                </div>
                <div class="col-md-3"></div>
        </div>

        <div class="row">

                <div class="col-md-3"></div>
                <div class="col-md-6">
                    
                    <div class="form-group">
                        <label><b>FirstName</b></label>
                        <asp:TextBox  ID="txtFirstName" CssClass="form-control" runat="server" />    
                    </div>

                    <div class="form-group">
                        <label><b>LastName</b></label>
                        <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" />
                    </div>

                    <div class="form-group">
                        <label><b>Email Id</b></label>
                        <asp:TextBox ID="txtEmailId" CssClass="form-control" runat="server" />
                    </div>
                    
                    <div class="form-group">
                        <label><b>Password</b></label>
                        <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server" />
                    </div>

                    <div class="form-group">
                        <label><b>Date Of Birth</b></label>
                        <asp:TextBox ID="dDOB" TextMode="Date"  CssClass="form-control" runat="server" />
                    </div>

                    <div class="form-group">
                        <label><b>Mobile No</b></label>
                        <asp:TextBox ID="txtMobileNo" TextMode="Phone" CssClass="form-control" runat="server" />
                    </div>

                    <div class="form-group">
                        <label><b>Address</b></label>
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server" />
                    </div>

                </div>               
                <div class="col-md-3"></div>
            </div>
        <br />
        <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnSubmit" class="btn btn-primary" runat="server" Text="Sumbit" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnReset" class="btn btn-danger" runat="server" Text="Reset" />
                    </div>
                    <div class="col-sd-4"></div>
        </div>

    </div>

</asp:Content>
