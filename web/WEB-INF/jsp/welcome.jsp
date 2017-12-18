<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #f2f2f2;
                padding: 25px;
            }

            .carousel-inner img {
                width: 100%; /* Set width to 100% */
                margin: auto;
                min-height:200px;
            }

            /* Hide the carousel text when the screen is less than 600 pixels wide */
            @media (max-width: 600px) {
                .carousel-caption {
                    display: none; 
                }
            }
        </style>
    </head>

    <body>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand" href="#">Logo</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/product/all">Product</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${pageContext.request.contextPath}/cart/show"> <img src="<c:url value="/resources/image/spc.jpg.png" />" > : ${cart.carts.size()}</a></li>
                    <li><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-log-in"></span> Sign Up</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="https://about.canva.com/wp-content/uploads/sites/3/2017/02/birthday_banner.png" alt="Image">
                <div class="carousel-caption">
                </div>      
            </div>

            <div class="item">
                <img src="https://ps.w.org/adrotate/assets/banner-772x250.jpg?rev=1691423" alt="Image">
                <div class="carousel-caption">
                </div>      
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container text-center" align="center">     
        <h3>What We Sell</h3><br>
        <div class="row">
            <div class="col-sm-4">
                <img src="https://s3.envato.com/files/227503983/01_Preview%203.jpg" class="img-responsive" style="width:100%" alt="Image">
                <p>Ice Cream</p>
            </div>
            <div class="col-sm-4"> 
                <img src="http://www.prodirectrunning.com/siteimages/responsive/adidas/adios-boost/desktop/Mens/top-banner.jpg" class="img-responsive" style="width:110%" alt="Image">
                <p>Adidas</p>    
            </div>
        </div>
    </div>
</body>
</html>
