<%@ Page Title="" Language="C#" MasterPageFile="~/Asp_Shopping_MasterPage.Master" AutoEventWireup="true" CodeBehind="Asp_Shopping_HomePage.aspx.cs" Inherits="Asp_shopping_websiteDesign.Asp_Shopping_HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="row">
        <div class="col-12">
            <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <a class="navbar-brand" href="#">Shopping Mart</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
            <a class="nav-link" onclick="" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link">Mobiles</a>
        </li>

        <li class="nav-item">
            <a class="nav-link">TVs & Appliances</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="#">Men</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="#">Women</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="#">Home & Furniture</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="#">Sports</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="#">Books</a>
        </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" style="width:450px" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div
    </nav>
        </div>
    </div>
    

    <br />
    <br />






    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <div style="align-content:center">
                <asp:DataList ID="dlHomePage" GridLines="None" runat="server" OnItemCommand="dlHomePage_ItemCommand" RepeatColumns="5"   RepeatLayout="Table"  CellSpacing="10" RepeatDirection="Horizontal" >
                    <ItemTemplate>
                        <div style="text-align:center">
                            <asp:Image ID="imgProduct" Width="90px" Height="150px" runat="server" ImageUrl='<%#"Handler1.ashx?id="+Eval("iProductId")%>' />           
                        </div>
                        <hr />

                                <div style="text-align:center">   
                                <asp:Label ID="lblProductName" Text='<%#Eval("vProductName") %>' runat="server" />
                                </div>

                                <div style="text-align:center">
                                <asp:Label ID="lblPrice" Text='<%#Eval("mMoney") %>' runat="server" />
                                </div>

                            <div style="text-align:center">
                            <asp:Button ID="btnDetails" runat="server" Text="Details" CommandName="Details" CommandArgument='<%#Eval("iProductId") %>' />
                            <asp:Button ID="btnBuyNow" Text="BuyNow" runat="server" CommandName="BuyNow" CommandArgument='<%#Eval("iProductId")%>' />
                        </div>
                    </ItemTemplate>
                  </asp:DataList>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
    

</asp:Content>
