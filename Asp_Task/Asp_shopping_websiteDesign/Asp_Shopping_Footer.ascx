<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Asp_Shopping_Footer.ascx.cs" Inherits="Asp_shopping_websiteDesign.Asp_Shopping_Footer" %>
<%@ OutputCache Duration="20" VaryByParam="none" %>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/jquery-3.0.0.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>

<style>
    body{
        font-family: 'Raleway', sans-serif;
    }

    footer{
	    background-color:#222222;
        padding: 25px 0px;
    }

    footer ul{
        list-style:none;
        margin:0 auto;
        display:inline-block;
        padding-top:25px;
    }

    footer ul li{
        float:left;
    }

    footer ul li a{
	    color:#b1aca1;
        padding:20px;
    }

    /*footer ul li a:hover{
	    color:#7dabdb;
	    text-decoration:none;
    }*/



    .copyright{
        background-color:#f0f0f0;
    }

    .copyright p{
        align-content:center;
	    font-size:12px;
	    padding:15px 0 10px 0;
    }   


</style>

<footer>
    
    <div class="container-fluid" style="border-top:1px solid grey;">
        <div class="row  text-center">  
            <div class="col-3"></div>
            <div class="col-md-6 col-md-offset-3">
                <ul class="menu" >
                    <li>
                        <a href="#">Sell On Shopping Mart</a>
                    </li>
                           
                    <li>
                        <a href="#">About</a>
                    </li>
                           
                    <li>
                        <a href="#">Help Center</a>
                    </li>
                           
                    <li>
                        <a href="#">Policy</a>
                    </li>
                           
                    <li>
                        <a href="#">Social</a>
                    </li>
                </ul>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</footer>


<div class="copyright">
   <div class="container">
   
     <div class="row text-center">
         <div class="col-3"></div>
         <div class="col-md-6 col-md-offset-3">
             <p>Copyright © 2017 All rights reserved</p>
         </div>
         <div class="col-3"></div>
     	
     </div>
     
    </div>
</div>

