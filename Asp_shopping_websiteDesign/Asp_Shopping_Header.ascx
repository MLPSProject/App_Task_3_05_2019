<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Asp_Shopping_Header.ascx.cs" Inherits="Asp_shopping_websiteDesign.WebUserControl1" %>
<%@ OutputCache Duration="20" VaryByParam="none" %>

<link href="Content/bootstrap.css" rel="stylesheet" />


<style type="text/css">
    .auto-style1 {
        width: 168px;
        height: 137px;
        margin-left: 0px;
    }
    #Sitename{
        font:bold;
        font-family:Magneto;
        font-size:45px;
        color:gold; 
        opacity:1;
    }
</style>


<header style="background-color:blueviolet ;border-bottom-style:double">
    <div class="container-fluid">
        <div class="row">
            
                <div class="col-md-1">
                    <img src="Image/online-shopping-logo-01-01-.jpg" ID="imgheader" class="auto-style1"/>

                </div>

                

                <div class="col-md-11" style="text-align:center">
                    <br />
                    
                        
                    <label id="Sitename">Happy Shopping</label>
                </div>

                

        </div>       
    </div>
</header>